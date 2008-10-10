/**
\file RBFramework.java

Compilation Copyright 2004 AD Software
Describes the REALbasic framework so it can be used in generation of documentation with Doxygen.
*/


/**
\defgroup RBProOnly REALbasic Professional Only
Only available in REALbasic Professional, will not work in Standard edition
*/


/**
\defgroup RBFramework REALbasic Framework
The built-in cross-platform framework classes supplied with REALbasic.
\todo go through the index and add all the missing classes
*/


/**
\defgroup Incomplete REALbasic Framework classes not finished
Group used to indicate this class or interface needs more documentation.
*/


/**
\defgroup RBInterfaces REALbasic Framework Standard Interfaces
Interfaces  in the built-in cross-platform framework classes supplied with REALbasic.
\ingroup RBFramework
*/


/**
\defgroup RBXML REALbasic Framework XML Handling
XML Processing classes  in the built-in cross-platform framework classes supplied with REALbasic.
\ingroup RBFramework
*/


/**
\defgroup RBCommunications REALbasic Framework Communications classes
Communications classes  in the built-in cross-platform framework classes supplied with REALbasic.
\ingroup RBFramework
*/


/**
\defgroup RBDB REALbasic Framework Database classes
Database classes in the built-in cross-platform framework classes supplied with REALbasic.
\ingroup RBFramework
*/


/**
\defgroup ExtendsAClass Extension methods
Attempt to group methods from modules that extend other classes, not being part of the module.
*/


/**
\defgroup Folders Application Folders
Contains the hierarchy of all folders visible in the RB project.
*/


/**
\ingroup RBInterfaces
*/
public interface Readable {
}


/**
\ingroup RBInterfaces
*/
public interface Writable {
}


/**
\ingroup RBInterfaces
*/
public interface StringProvider {
	public String getString();
	public void setString(String);
}



/**
A pseudo class we use for modules to inherit from so they show up separately grouped.
\ingroup RBFramework, Incomplete
*/
public class Module {

}

//no class for Object because Java implies it


/**
\ingroup RBFramework, Incomplete
*/
public class AppleEvent extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class AppleEventDescList extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class AppleEventObjectSpecifier extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class AppleEventRecord extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class AppleEventTarget extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class AppleEventTemplate extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class Application extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class BinaryStream extends Object implements Readable, Writable {

}



/**
\ingroup RBFramework, Incomplete
*/
public class Clipboard extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class Collection extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class Control extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class CriticalSection extends Object {

}


/**
\ingroup RBFramework, Incomplete
*/
public class Date extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class Dictionary extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class DragItem extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class EditableMovie extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class FolderItem extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class Graphics extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class Group3D extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class MemoryBlock extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class MenuItem extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class MouseCursor extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class Movie extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class Object3D extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class Picture extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class PrinterSetup extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class QTEffectSequence extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class QTGraphicsExporter extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class QTTrack extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class QTUserData extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class QTVideoTrack extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class Quaternion extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class QuitMenuItem extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class RBScript extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class RecordSet extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class ResourceFork extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class RuntimeException extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class Screen extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class Semaphore extends Object {

}


/**
\ingroup RBCommunications
*/
public class Serial extends Object implements Readable, Writable {

}



/**
\deprecated see SocketCore
\ingroup RBCommunications
*/
public class Socket extends Object {

}


/**
\ingroup RBCommunications, RBProOnly
*/
public class ServerSocket extends Object {

}


/**
\ingroup RBCommunications
*/
public class SocketCore extends Object {

}


/**
\ingroup RBCommunications
*/
public class TCPSocket extends SocketCore implements Readable, Writable {

}


/**
\ingroup RBCommunications
*/
public class UDPSocket extends SocketCore implements Readable, Writable {

}


/**
\ingroup RBCommunications
*/
public class EasyUDPSocket extends UDPSocket implements Readable, Writable {

}


/**
\ingroup RBCommunications
*/
public class SSLSocket extends TCPSocket implements Readable, Writable {

}


/**
\ingroup RBCommunications
*/
public class EasySocket extends TCPSocket implements Readable, Writable {

}



/**
\ingroup RBFramework, Incomplete
*/
public class StyledTextPrinter extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class System extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class TextInputStream extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class TextOutputStream extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class Thread extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class Timer extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class Variant extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class Vector3D extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class Window extends Object {

}



/**
\ingroup RBFramework, Incomplete
*/
public class  extends Object {

}


/**
\ingroup RBFramework, Incomplete
*/
public class BevelButton extends Control {

}



/**
\ingroup RBFramework, Incomplete
*/
public class Canvas extends Control {

}



/**
\ingroup RBFramework, Incomplete
*/
public class CheckBox extends Control {

}



/**
\ingroup RBFramework, Incomplete
*/
public class ContextualMenu extends Control {

}



/**
\ingroup RBFramework, Incomplete
*/
public class DataControl extends Control {

}



/**
\ingroup RBFramework, Incomplete
*/
public class DisclosureTriangle extends Control {

}



/**
\ingroup RBFramework, Incomplete
*/
public class EditField extends Control {

}



/**
\ingroup RBFramework, Incomplete
*/
public class GroupBox extends Control {

}



/**
\ingroup RBFramework, Incomplete
*/
public class ImageWell extends Control {

}



/**
\ingroup RBFramework, Incomplete
*/
public class Line extends Control {

}



/**
\ingroup RBFramework, Incomplete
*/
public class ListBox extends Control {

}



/**
\ingroup RBFramework, Incomplete
*/
public class LittleArrows extends Control {

}



/**
\ingroup RBFramework, Incomplete
*/
public class MoviePlayer extends Control {

}



/**
\ingroup RBFramework, Incomplete
*/
public class NotePlayer extends Control {

}



/**
\ingroup RBFramework, Incomplete
*/
public class Oval extends Control {

}



/**
\ingroup RBFramework, Incomplete
*/
public class Placard extends Control {

}



/**
\ingroup RBFramework, Incomplete
*/
public class PopupArrow extends Control {

}



/**
\ingroup RBFramework, Incomplete
*/
public class PopupMenu extends Control {

}



/**
\ingroup RBFramework, Incomplete
*/
public class ProgressBar extends Control {

}



/**
\ingroup RBFramework, Incomplete
*/
public class PushButton extends Control {

}



/**
\ingroup RBFramework, Incomplete
*/
public class RadioButton extends Control {

}



/**
\ingroup RBFramework, Incomplete
*/
public class RB3DSpace extends Control {

}



/**
\ingroup RBFramework, Incomplete
*/
public class Rectangle extends Control {

}



/**
\ingroup RBFramework, Incomplete
*/
public class RectControl extends Control {

}



/**
\ingroup RBFramework, Incomplete
*/
public class RoundRectangle extends Control {

}



/**
\ingroup RBFramework, Incomplete
*/
public class ScrollBar extends Control {

}



/**
\ingroup RBFramework, Incomplete
*/
public class Separator extends Control {

}



/**
\ingroup RBFramework, Incomplete
*/
public class Slider extends Control {

}



/**
\ingroup RBFramework, Incomplete
*/
public class SpriteSurface extends Control {

}



/**
\ingroup RBFramework, Incomplete
*/
public class StaticText extends Control {

}



/**
\ingroup RBFramework, Incomplete
*/
public class TabPanel extends Control {

}


/**
\ingroup RBFramework, Incomplete
*/
public class IllegalCastException extends RuntimeException {

}



/**
\ingroup RBFramework, Incomplete
*/
public class StackOverflowException extends RuntimeException {

}



/**
\ingroup RBFramework, Incomplete
*/
public class OutOfBoundsException extends RuntimeException {

}



/**
\ingroup RBFramework, Incomplete
*/
public class TypeMismatchException extends RuntimeException {

}



/**
\ingroup RBFramework, Incomplete
*/
public class NilObjectException extends RuntimeException {

}



/**
\ingroup RBFramework, Incomplete
*/
public class RegExException extends RuntimeException {

}



/**
\ingroup RBFramework, Incomplete
*/
public class RexExSearchPatternExc extends RuntimeException {

}



//===========  X M L  ===================


/**
\ingroup RBXML, Incomplete
*/
public class SOAPException extends RuntimeException {

}


/**
\ingroup RBXML, Incomplete
*/
public class XMLDOMException extends RuntimeException {

}


/**
\ingroup RBXML, Incomplete
*/
public class XMLException extends RuntimeException {

}


/**
\ingroup RBXML, Incomplete
*/
public class XMLReaderException extends RuntimeException {

}


/**
\ingroup RBXML, Incomplete
*/
public class SOAPMethod extends Object {

}


/**
\ingroup RBXML, Incomplete
*/
public class SOAPResult extends Object {

}


/**
\ingroup RBXML, Incomplete
*/
public class XMLReader extends Object {

}


/**
\todo cross check the parent as Language Ref doesn't state
\ingroup RBXML, Incomplete
*/
public class XMLXslHandler extends Object {

}


/**
\ingroup RBXML, Incomplete
*/
public class XMLContentModel extends Object {

}


/**
\ingroup RBXML, Incomplete
*/
public class XMLNodeList extends Object {

}


/**
\ingroup RBXML, Incomplete
Partly documented to experiment with settings.
*/
public class XMLNode extends Object {
	public int ChildCount;
	public XMLNode FirstChild;
	public XMLNode LastChild;
	public int LastError;
	public String LocalName;
	public String Name;
	public String NamespaceURI;
	// more to add
	
	public XMLNode AppendChild(XMLNode NewChild);
}



/**
\ingroup RBXML, Incomplete
*/
public class XMLAttribute extends XMLNode {

}


/**
\ingroup RBXML, Incomplete
*/
public class XMLAttributeList extends Object {

}


/**
\ingroup RBXML, Incomplete
*/
public class XMLCDATASection extends XMLNode {

}


/**
\ingroup RBXML, Incomplete
*/
public class XMLComment extends XMLNode {

}


/**
\ingroup RBXML, Incomplete
*/
public class XMLDocument extends XMLNode {

}


/**
\ingroup RBXML, Incomplete
*/
public class XMLStyleSheet extends XMLDocument {

}


/**
\ingroup RBXML, Incomplete
*/
public class XMLElement extends XMLNode {
	public int AttributeCount;
	
	public String GetAttribute(String Name);
	public String GetAttribute(String URI, String Name);
	public XMLAttribute GetAttributeNode(String Name);
	public XMLAttribute GetAttributeNode(int Index);
	public XMLAttribute GetAttributeNode(String URI, String Name);
	public XMLAttribute RemoveAttribute(String Name);
	public XMLAttribute RemoveAttribute(XMLAttribute attributeNode);
	public void SetAttribute(String Name, String Value);
	public void SetAttribute(String URI, String Name, String Value);
	public XMLAttribute GetAttributeNode(XMLAttribute AttributeNode, Boolean ns);
}


/**
\ingroup RBXML, Incomplete
*/
public class XMLProcessingInstruction extends XMLNode {

}


/**
\ingroup RBXML, Incomplete
*/
public class XMLTextNode extends XMLNode {

}


/**
\ingroup RBXML, Incomplete
*/
public class XMLNodeType extends Module {

}



//=========== D A T A B A S E  ===================

/**
\ingroup RBDB, Incomplete
*/
public class DatabaseField extends Object {

}


/**
\ingroup RBDB, Incomplete
*/
public class RecordSet extends Object {

}


/**
\deprecated use RecordSet instead.
\ingroup RBDB, Incomplete
*/
public class DatabaseCursor extends Object {

}


/**
\deprecated use DatabaseField instead.
\ingroup RBDB, Incomplete
*/
public class DatabaseCursorField extends Object {

}


/**
\ingroup RBDB, Incomplete
*/
public class DatabaseQuery extends Object {

}


/**
\ingroup RBDB, Incomplete
*/
public class DatabaseRecord extends Object {

}


/**
\ingroup RBDB, Incomplete
*/
public class DataControl extends RectControl {

}


/**
\ingroup RBDB, Incomplete
*/
public class Database extends Object {

}


/**
\note The only Database type supported in the Standard edition.
\ingroup RBDB, Incomplete
*/
public class REALDatabase extends Database {

}


/**
\deprecated
\ingroup RBDB, Incomplete, RBProOnly
*/
public class REALDatabaseOldFormat extends Database {

}


/**
\ingroup RBDB, Incomplete, RBProOnly
*/
public class ADSP4DServer extends Database {

}


/**
\ingroup RBDB, Incomplete, RBProOnly
*/
public class MySQLDatabase extends Database {

}


/**
\ingroup RBDB, Incomplete, RBProOnly
*/
public class ODBCDatabase extends Database {

}


/**
\ingroup RBDB, Incomplete, RBProOnly
*/
public class OpenBaseDatabase extends Database {

}


/**
\ingroup RBDB, Incomplete, RBProOnly
*/
public class OracleDatabase extends Database {

}


/**
\ingroup RBDB, Incomplete, RBProOnly
*/
public class PostgreSQLDatabase extends Database {

}


/**
\ingroup RBDB, Incomplete, RBProOnly
*/
public class TCPIP4DServer extends Database {

}


