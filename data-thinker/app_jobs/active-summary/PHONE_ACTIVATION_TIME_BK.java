// ORM class for table 'PHONE_ACTIVATION_TIME_BK'
// WARNING: This class is AUTO-GENERATED. Modify at your own risk.
//
// Debug information:
// Generated date: Thu Dec 31 16:03:12 CST 2015
// For connector: org.apache.sqoop.manager.MySQLManager
import org.apache.hadoop.io.BytesWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.io.Writable;
import org.apache.hadoop.mapred.lib.db.DBWritable;
import com.cloudera.sqoop.lib.JdbcWritableBridge;
import com.cloudera.sqoop.lib.DelimiterSet;
import com.cloudera.sqoop.lib.FieldFormatter;
import com.cloudera.sqoop.lib.RecordParser;
import com.cloudera.sqoop.lib.BooleanParser;
import com.cloudera.sqoop.lib.BlobRef;
import com.cloudera.sqoop.lib.ClobRef;
import com.cloudera.sqoop.lib.LargeObjectLoader;
import com.cloudera.sqoop.lib.SqoopRecord;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class PHONE_ACTIVATION_TIME_BK extends SqoopRecord  implements DBWritable, Writable {
  private final int PROTOCOL_VERSION = 3;
  public int getClassFormatVersion() { return PROTOCOL_VERSION; }
  protected ResultSet __cur_result_set;
  private String CIMEI;
  public String get_CIMEI() {
    return CIMEI;
  }
  public void set_CIMEI(String CIMEI) {
    this.CIMEI = CIMEI;
  }
  public PHONE_ACTIVATION_TIME_BK with_CIMEI(String CIMEI) {
    this.CIMEI = CIMEI;
    return this;
  }
  private String SLIVED_TIME;
  public String get_SLIVED_TIME() {
    return SLIVED_TIME;
  }
  public void set_SLIVED_TIME(String SLIVED_TIME) {
    this.SLIVED_TIME = SLIVED_TIME;
  }
  public PHONE_ACTIVATION_TIME_BK with_SLIVED_TIME(String SLIVED_TIME) {
    this.SLIVED_TIME = SLIVED_TIME;
    return this;
  }
  private String SOFTWARE_VERSION;
  public String get_SOFTWARE_VERSION() {
    return SOFTWARE_VERSION;
  }
  public void set_SOFTWARE_VERSION(String SOFTWARE_VERSION) {
    this.SOFTWARE_VERSION = SOFTWARE_VERSION;
  }
  public PHONE_ACTIVATION_TIME_BK with_SOFTWARE_VERSION(String SOFTWARE_VERSION) {
    this.SOFTWARE_VERSION = SOFTWARE_VERSION;
    return this;
  }
  private String EXTERNAL_MODEL;
  public String get_EXTERNAL_MODEL() {
    return EXTERNAL_MODEL;
  }
  public void set_EXTERNAL_MODEL(String EXTERNAL_MODEL) {
    this.EXTERNAL_MODEL = EXTERNAL_MODEL;
  }
  public PHONE_ACTIVATION_TIME_BK with_EXTERNAL_MODEL(String EXTERNAL_MODEL) {
    this.EXTERNAL_MODEL = EXTERNAL_MODEL;
    return this;
  }
  private String GROUP_TITLE;
  public String get_GROUP_TITLE() {
    return GROUP_TITLE;
  }
  public void set_GROUP_TITLE(String GROUP_TITLE) {
    this.GROUP_TITLE = GROUP_TITLE;
  }
  public PHONE_ACTIVATION_TIME_BK with_GROUP_TITLE(String GROUP_TITLE) {
    this.GROUP_TITLE = GROUP_TITLE;
    return this;
  }
  private String SUMMARY_DATE;
  public String get_SUMMARY_DATE() {
    return SUMMARY_DATE;
  }
  public void set_SUMMARY_DATE(String SUMMARY_DATE) {
    this.SUMMARY_DATE = SUMMARY_DATE;
  }
  public PHONE_ACTIVATION_TIME_BK with_SUMMARY_DATE(String SUMMARY_DATE) {
    this.SUMMARY_DATE = SUMMARY_DATE;
    return this;
  }
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (!(o instanceof PHONE_ACTIVATION_TIME_BK)) {
      return false;
    }
    PHONE_ACTIVATION_TIME_BK that = (PHONE_ACTIVATION_TIME_BK) o;
    boolean equal = true;
    equal = equal && (this.CIMEI == null ? that.CIMEI == null : this.CIMEI.equals(that.CIMEI));
    equal = equal && (this.SLIVED_TIME == null ? that.SLIVED_TIME == null : this.SLIVED_TIME.equals(that.SLIVED_TIME));
    equal = equal && (this.SOFTWARE_VERSION == null ? that.SOFTWARE_VERSION == null : this.SOFTWARE_VERSION.equals(that.SOFTWARE_VERSION));
    equal = equal && (this.EXTERNAL_MODEL == null ? that.EXTERNAL_MODEL == null : this.EXTERNAL_MODEL.equals(that.EXTERNAL_MODEL));
    equal = equal && (this.GROUP_TITLE == null ? that.GROUP_TITLE == null : this.GROUP_TITLE.equals(that.GROUP_TITLE));
    equal = equal && (this.SUMMARY_DATE == null ? that.SUMMARY_DATE == null : this.SUMMARY_DATE.equals(that.SUMMARY_DATE));
    return equal;
  }
  public boolean equals0(Object o) {
    if (this == o) {
      return true;
    }
    if (!(o instanceof PHONE_ACTIVATION_TIME_BK)) {
      return false;
    }
    PHONE_ACTIVATION_TIME_BK that = (PHONE_ACTIVATION_TIME_BK) o;
    boolean equal = true;
    equal = equal && (this.CIMEI == null ? that.CIMEI == null : this.CIMEI.equals(that.CIMEI));
    equal = equal && (this.SLIVED_TIME == null ? that.SLIVED_TIME == null : this.SLIVED_TIME.equals(that.SLIVED_TIME));
    equal = equal && (this.SOFTWARE_VERSION == null ? that.SOFTWARE_VERSION == null : this.SOFTWARE_VERSION.equals(that.SOFTWARE_VERSION));
    equal = equal && (this.EXTERNAL_MODEL == null ? that.EXTERNAL_MODEL == null : this.EXTERNAL_MODEL.equals(that.EXTERNAL_MODEL));
    equal = equal && (this.GROUP_TITLE == null ? that.GROUP_TITLE == null : this.GROUP_TITLE.equals(that.GROUP_TITLE));
    equal = equal && (this.SUMMARY_DATE == null ? that.SUMMARY_DATE == null : this.SUMMARY_DATE.equals(that.SUMMARY_DATE));
    return equal;
  }
  public void readFields(ResultSet __dbResults) throws SQLException {
    this.__cur_result_set = __dbResults;
    this.CIMEI = JdbcWritableBridge.readString(1, __dbResults);
    this.SLIVED_TIME = JdbcWritableBridge.readString(2, __dbResults);
    this.SOFTWARE_VERSION = JdbcWritableBridge.readString(3, __dbResults);
    this.EXTERNAL_MODEL = JdbcWritableBridge.readString(4, __dbResults);
    this.GROUP_TITLE = JdbcWritableBridge.readString(5, __dbResults);
    this.SUMMARY_DATE = JdbcWritableBridge.readString(6, __dbResults);
  }
  public void readFields0(ResultSet __dbResults) throws SQLException {
    this.CIMEI = JdbcWritableBridge.readString(1, __dbResults);
    this.SLIVED_TIME = JdbcWritableBridge.readString(2, __dbResults);
    this.SOFTWARE_VERSION = JdbcWritableBridge.readString(3, __dbResults);
    this.EXTERNAL_MODEL = JdbcWritableBridge.readString(4, __dbResults);
    this.GROUP_TITLE = JdbcWritableBridge.readString(5, __dbResults);
    this.SUMMARY_DATE = JdbcWritableBridge.readString(6, __dbResults);
  }
  public void loadLargeObjects(LargeObjectLoader __loader)
      throws SQLException, IOException, InterruptedException {
  }
  public void loadLargeObjects0(LargeObjectLoader __loader)
      throws SQLException, IOException, InterruptedException {
  }
  public void write(PreparedStatement __dbStmt) throws SQLException {
    write(__dbStmt, 0);
  }

  public int write(PreparedStatement __dbStmt, int __off) throws SQLException {
    JdbcWritableBridge.writeString(CIMEI, 1 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(SLIVED_TIME, 2 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(SOFTWARE_VERSION, 3 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(EXTERNAL_MODEL, 4 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(GROUP_TITLE, 5 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(SUMMARY_DATE, 6 + __off, 12, __dbStmt);
    return 6;
  }
  public void write0(PreparedStatement __dbStmt, int __off) throws SQLException {
    JdbcWritableBridge.writeString(CIMEI, 1 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(SLIVED_TIME, 2 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(SOFTWARE_VERSION, 3 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(EXTERNAL_MODEL, 4 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(GROUP_TITLE, 5 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(SUMMARY_DATE, 6 + __off, 12, __dbStmt);
  }
  public void readFields(DataInput __dataIn) throws IOException {
this.readFields0(__dataIn);  }
  public void readFields0(DataInput __dataIn) throws IOException {
    if (__dataIn.readBoolean()) { 
        this.CIMEI = null;
    } else {
    this.CIMEI = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.SLIVED_TIME = null;
    } else {
    this.SLIVED_TIME = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.SOFTWARE_VERSION = null;
    } else {
    this.SOFTWARE_VERSION = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.EXTERNAL_MODEL = null;
    } else {
    this.EXTERNAL_MODEL = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.GROUP_TITLE = null;
    } else {
    this.GROUP_TITLE = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.SUMMARY_DATE = null;
    } else {
    this.SUMMARY_DATE = Text.readString(__dataIn);
    }
  }
  public void write(DataOutput __dataOut) throws IOException {
    if (null == this.CIMEI) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, CIMEI);
    }
    if (null == this.SLIVED_TIME) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, SLIVED_TIME);
    }
    if (null == this.SOFTWARE_VERSION) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, SOFTWARE_VERSION);
    }
    if (null == this.EXTERNAL_MODEL) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, EXTERNAL_MODEL);
    }
    if (null == this.GROUP_TITLE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, GROUP_TITLE);
    }
    if (null == this.SUMMARY_DATE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, SUMMARY_DATE);
    }
  }
  public void write0(DataOutput __dataOut) throws IOException {
    if (null == this.CIMEI) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, CIMEI);
    }
    if (null == this.SLIVED_TIME) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, SLIVED_TIME);
    }
    if (null == this.SOFTWARE_VERSION) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, SOFTWARE_VERSION);
    }
    if (null == this.EXTERNAL_MODEL) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, EXTERNAL_MODEL);
    }
    if (null == this.GROUP_TITLE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, GROUP_TITLE);
    }
    if (null == this.SUMMARY_DATE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, SUMMARY_DATE);
    }
  }
  private static final DelimiterSet __outputDelimiters = new DelimiterSet((char) 44, (char) 10, (char) 0, (char) 0, false);
  public String toString() {
    return toString(__outputDelimiters, true);
  }
  public String toString(DelimiterSet delimiters) {
    return toString(delimiters, true);
  }
  public String toString(boolean useRecordDelim) {
    return toString(__outputDelimiters, useRecordDelim);
  }
  public String toString(DelimiterSet delimiters, boolean useRecordDelim) {
    StringBuilder __sb = new StringBuilder();
    char fieldDelim = delimiters.getFieldsTerminatedBy();
    __sb.append(FieldFormatter.escapeAndEnclose(CIMEI==null?"null":CIMEI, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(SLIVED_TIME==null?"null":SLIVED_TIME, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(SOFTWARE_VERSION==null?"null":SOFTWARE_VERSION, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(EXTERNAL_MODEL==null?"null":EXTERNAL_MODEL, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(GROUP_TITLE==null?"null":GROUP_TITLE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(SUMMARY_DATE==null?"null":SUMMARY_DATE, delimiters));
    if (useRecordDelim) {
      __sb.append(delimiters.getLinesTerminatedBy());
    }
    return __sb.toString();
  }
  public void toString0(DelimiterSet delimiters, StringBuilder __sb, char fieldDelim) {
    __sb.append(FieldFormatter.escapeAndEnclose(CIMEI==null?"null":CIMEI, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(SLIVED_TIME==null?"null":SLIVED_TIME, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(SOFTWARE_VERSION==null?"null":SOFTWARE_VERSION, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(EXTERNAL_MODEL==null?"null":EXTERNAL_MODEL, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(GROUP_TITLE==null?"null":GROUP_TITLE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(SUMMARY_DATE==null?"null":SUMMARY_DATE, delimiters));
  }
  private static final DelimiterSet __inputDelimiters = new DelimiterSet((char) 9, (char) 10, (char) 0, (char) 0, false);
  private RecordParser __parser;
  public void parse(Text __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(CharSequence __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(byte [] __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(char [] __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(ByteBuffer __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(CharBuffer __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  private void __loadFromFields(List<String> fields) {
    Iterator<String> __it = fields.listIterator();
    String __cur_str = null;
    try {
    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.CIMEI = null; } else {
      this.CIMEI = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.SLIVED_TIME = null; } else {
      this.SLIVED_TIME = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.SOFTWARE_VERSION = null; } else {
      this.SOFTWARE_VERSION = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.EXTERNAL_MODEL = null; } else {
      this.EXTERNAL_MODEL = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.GROUP_TITLE = null; } else {
      this.GROUP_TITLE = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.SUMMARY_DATE = null; } else {
      this.SUMMARY_DATE = __cur_str;
    }

    } catch (RuntimeException e) {    throw new RuntimeException("Can't parse input data: '" + __cur_str + "'", e);    }  }

  private void __loadFromFields0(Iterator<String> __it) {
    String __cur_str = null;
    try {
    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.CIMEI = null; } else {
      this.CIMEI = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.SLIVED_TIME = null; } else {
      this.SLIVED_TIME = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.SOFTWARE_VERSION = null; } else {
      this.SOFTWARE_VERSION = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.EXTERNAL_MODEL = null; } else {
      this.EXTERNAL_MODEL = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.GROUP_TITLE = null; } else {
      this.GROUP_TITLE = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.SUMMARY_DATE = null; } else {
      this.SUMMARY_DATE = __cur_str;
    }

    } catch (RuntimeException e) {    throw new RuntimeException("Can't parse input data: '" + __cur_str + "'", e);    }  }

  public Object clone() throws CloneNotSupportedException {
    PHONE_ACTIVATION_TIME_BK o = (PHONE_ACTIVATION_TIME_BK) super.clone();
    return o;
  }

  public void clone0(PHONE_ACTIVATION_TIME_BK o) throws CloneNotSupportedException {
  }

  public Map<String, Object> getFieldMap() {
    Map<String, Object> __sqoop$field_map = new TreeMap<String, Object>();
    __sqoop$field_map.put("CIMEI", this.CIMEI);
    __sqoop$field_map.put("SLIVED_TIME", this.SLIVED_TIME);
    __sqoop$field_map.put("SOFTWARE_VERSION", this.SOFTWARE_VERSION);
    __sqoop$field_map.put("EXTERNAL_MODEL", this.EXTERNAL_MODEL);
    __sqoop$field_map.put("GROUP_TITLE", this.GROUP_TITLE);
    __sqoop$field_map.put("SUMMARY_DATE", this.SUMMARY_DATE);
    return __sqoop$field_map;
  }

  public void getFieldMap0(Map<String, Object> __sqoop$field_map) {
    __sqoop$field_map.put("CIMEI", this.CIMEI);
    __sqoop$field_map.put("SLIVED_TIME", this.SLIVED_TIME);
    __sqoop$field_map.put("SOFTWARE_VERSION", this.SOFTWARE_VERSION);
    __sqoop$field_map.put("EXTERNAL_MODEL", this.EXTERNAL_MODEL);
    __sqoop$field_map.put("GROUP_TITLE", this.GROUP_TITLE);
    __sqoop$field_map.put("SUMMARY_DATE", this.SUMMARY_DATE);
  }

  public void setField(String __fieldName, Object __fieldVal) {
    if ("CIMEI".equals(__fieldName)) {
      this.CIMEI = (String) __fieldVal;
    }
    else    if ("SLIVED_TIME".equals(__fieldName)) {
      this.SLIVED_TIME = (String) __fieldVal;
    }
    else    if ("SOFTWARE_VERSION".equals(__fieldName)) {
      this.SOFTWARE_VERSION = (String) __fieldVal;
    }
    else    if ("EXTERNAL_MODEL".equals(__fieldName)) {
      this.EXTERNAL_MODEL = (String) __fieldVal;
    }
    else    if ("GROUP_TITLE".equals(__fieldName)) {
      this.GROUP_TITLE = (String) __fieldVal;
    }
    else    if ("SUMMARY_DATE".equals(__fieldName)) {
      this.SUMMARY_DATE = (String) __fieldVal;
    }
    else {
      throw new RuntimeException("No such field: " + __fieldName);
    }
  }
  public boolean setField0(String __fieldName, Object __fieldVal) {
    if ("CIMEI".equals(__fieldName)) {
      this.CIMEI = (String) __fieldVal;
      return true;
    }
    else    if ("SLIVED_TIME".equals(__fieldName)) {
      this.SLIVED_TIME = (String) __fieldVal;
      return true;
    }
    else    if ("SOFTWARE_VERSION".equals(__fieldName)) {
      this.SOFTWARE_VERSION = (String) __fieldVal;
      return true;
    }
    else    if ("EXTERNAL_MODEL".equals(__fieldName)) {
      this.EXTERNAL_MODEL = (String) __fieldVal;
      return true;
    }
    else    if ("GROUP_TITLE".equals(__fieldName)) {
      this.GROUP_TITLE = (String) __fieldVal;
      return true;
    }
    else    if ("SUMMARY_DATE".equals(__fieldName)) {
      this.SUMMARY_DATE = (String) __fieldVal;
      return true;
    }
    else {
      return false;    }
  }
}
