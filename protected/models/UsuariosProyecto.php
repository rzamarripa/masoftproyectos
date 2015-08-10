<?php

/**
 * This is the model class for table "UsuariosProyecto".
 *
 * The followings are the available columns in table 'UsuariosProyecto':
 * @property string $id
 * @property string $usuario_did
 * @property string $proyecto_did
 * @property string $estatus_did
 * @property string $fechaCreacion_ft
 *
 * The followings are the available model relations:
 * @property Estatus $estatus
 * @property Proyecto $proyecto
 * @property Usuario $usuario
 */
class UsuariosProyecto extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @return UsuariosProyecto the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'UsuariosProyecto';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('usuario_did', 'length', 'max'=>10),
			array('proyecto_did, estatus_did', 'length', 'max'=>11),
			array('fechaCreacion_ft', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, usuario_did, proyecto_did, estatus_did, fechaCreacion_ft', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'estatus' => array(self::BELONGS_TO, 'Estatus', 'estatus_did'),
			'proyecto' => array(self::BELONGS_TO, 'Proyecto', 'proyecto_did'),
			'usuario' => array(self::BELONGS_TO, 'Usuario', 'usuario_did'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'usuario_did' => 'Usuario',
			'proyecto_did' => 'Proyecto',
			'estatus_did' => 'Estatus',
			'fechaCreacion_ft' => 'Fecha Creacion Ft',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id,true);
		$criteria->compare('usuario_did',$this->usuario_did,true);
		$criteria->compare('proyecto_did',$this->proyecto_did,true);
		$criteria->compare('estatus_did',$this->estatus_did,true);
		$criteria->compare('fechaCreacion_ft',$this->fechaCreacion_ft,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}