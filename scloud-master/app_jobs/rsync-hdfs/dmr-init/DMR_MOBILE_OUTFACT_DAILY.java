// ORM class for table 'DMR_MOBILE_OUTFACT_DAILY'
// WARNING: This class is AUTO-GENERATED. Modify at your own risk.
//
// Debug information:
// Generated date: Mon Jan 18 18:11:27 CST 2016
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

public class DMR_MOBILE_OUTFACT_DAILY extends SqoopRecord  implements DBWritable, Writable {
  private final int PROTOCOL_VERSION = 3;
  public int getClassFormatVersion() { return PROTOCOL_VERSION; }
  protected ResultSet __cur_result_set;
  private String last_update;
  public String get_last_update() {
    return last_update;
  }
  public void set_last_update(String last_update) {
    this.last_update = last_update;
  }
  public DMR_MOBILE_OUTFACT_DAILY with_last_update(String last_update) {
    this.last_update = last_update;
    return this;
  }
  private String cdt;
  public String get_cdt() {
    return cdt;
  }
  public void set_cdt(String cdt) {
    this.cdt = cdt;
  }
  public DMR_MOBILE_OUTFACT_DAILY with_cdt(String cdt) {
    this.cdt = cdt;
    return this;
  }
  private String model;
  public String get_model() {
    return model;
  }
  public void set_model(String model) {
    this.model = model;
  }
  public DMR_MOBILE_OUTFACT_DAILY with_model(String model) {
    this.model = model;
    return this;
  }
  private String storage;
  public String get_storage() {
    return storage;
  }
  public void set_storage(String storage) {
    this.storage = storage;
  }
  public DMR_MOBILE_OUTFACT_DAILY with_storage(String storage) {
    this.storage = storage;
    return this;
  }
  private String zhishi;
  public String get_zhishi() {
    return zhishi;
  }
  public void set_zhishi(String zhishi) {
    this.zhishi = zhishi;
  }
  public DMR_MOBILE_OUTFACT_DAILY with_zhishi(String zhishi) {
    this.zhishi = zhishi;
    return this;
  }
  private String color;
  public String get_color() {
    return color;
  }
  public void set_color(String color) {
    this.color = color;
  }
  public DMR_MOBILE_OUTFACT_DAILY with_color(String color) {
    this.color = color;
    return this;
  }
  private String version;
  public String get_version() {
    return version;
  }
  public void set_version(String version) {
    this.version = version;
  }
  public DMR_MOBILE_OUTFACT_DAILY with_version(String version) {
    this.version = version;
    return this;
  }
  private Long out_day;
  public Long get_out_day() {
    return out_day;
  }
  public void set_out_day(Long out_day) {
    this.out_day = out_day;
  }
  public DMR_MOBILE_OUTFACT_DAILY with_out_day(Long out_day) {
    this.out_day = out_day;
    return this;
  }
  private Long out_all;
  public Long get_out_all() {
    return out_all;
  }
  public void set_out_all(Long out_all) {
    this.out_all = out_all;
  }
  public DMR_MOBILE_OUTFACT_DAILY with_out_all(Long out_all) {
    this.out_all = out_all;
    return this;
  }
  private String dt;
  public String get_dt() {
    return dt;
  }
  public void set_dt(String dt) {
    this.dt = dt;
  }
  public DMR_MOBILE_OUTFACT_DAILY with_dt(String dt) {
    this.dt = dt;
    return this;
  }
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (!(o instanceof DMR_MOBILE_OUTFACT_DAILY)) {
      return false;
    }
    DMR_MOBILE_OUTFACT_DAILY that = (DMR_MOBILE_OUTFACT_DAILY) o;
    boolean equal = true;
    equal = equal && (this.last_update == null ? that.last_update == null : this.last_update.equals(that.last_update));
    equal = equal && (this.cdt == null ? that.cdt == null : this.cdt.equals(that.cdt));
    equal = equal && (this.model == null ? that.model == null : this.model.equals(that.model));
    equal = equal && (this.storage == null ? that.storage == null : this.storage.equals(that.storage));
    equal = equal && (this.zhishi == null ? that.zhishi == null : this.zhishi.equals(that.zhishi));
    equal = equal && (this.color == null ? that.color == null : this.color.equals(that.color));
    equal = equal && (this.version == null ? that.version == null : this.version.equals(that.version));
    equal = equal && (this.out_day == null ? that.out_day == null : this.out_day.equals(that.out_day));
    equal = equal && (this.out_all == null ? that.out_all == null : this.out_all.equals(that.out_all));
    equal = equal && (this.dt == null ? that.dt == null : this.dt.equals(that.dt));
    return equal;
  }
  public boolean equals0(Object o) {
    if (this == o) {
      return true;
    }
    if (!(o instanceof DMR_MOBILE_OUTFACT_DAILY)) {
      return false;
    }
    DMR_MOBILE_OUTFACT_DAILY that = (DMR_MOBILE_OUTFACT_DAILY) o;
    boolean equal = true;
    equal = equal && (this.last_update == null ? that.last_update == null : this.last_update.equals(that.last_update));
    equal = equal && (this.cdt == null ? that.cdt == null : this.cdt.equals(that.cdt));
    equal = equal && (this.model == null ? that.model == null : this.model.equals(that.model));
    equal = equal && (this.storage == null ? that.storage == null : this.storage.equals(that.storage));
    equal = equal && (this.zhishi == null ? that.zhishi == null : this.zhishi.equals(that.zhishi));
    equal = equal && (this.color == null ? that.color == null : this.color.equals(that.color));
    equal = equal && (this.version == null ? that.version == null : this.version.equals(that.version));
    equal = equal && (this.out_day == null ? that.out_day == null : this.out_day.equals(that.out_day));
    equal = equal && (this.out_all == null ? that.out_all == null : this.out_all.equals(that.out_all));
    equal = equal && (this.dt == null ? that.dt == null : this.dt.equals(that.dt));
    return equal;
  }
  public void readFields(ResultSet __dbResults) throws SQLException {
    this.__cur_result_set = __dbResults;
    this.last_update = JdbcWritableBridge.readString(1, __dbResults);
    this.cdt = JdbcWritableBridge.readString(2, __dbResults);
    this.model = JdbcWritableBridge.readString(3, __dbResults);
    this.storage = JdbcWritableBridge.readString(4, __dbResults);
    this.zhishi = JdbcWritableBridge.readString(5, __dbResults);
    this.color = JdbcWritableBridge.readString(6, __dbResults);
    this.version = JdbcWritableBridge.readString(7, __dbResults);
    this.out_day = JdbcWritableBridge.readLong(8, __dbResults);
    this.out_all = JdbcWritableBridge.readLong(9, __dbResults);
    this.dt = JdbcWritableBridge.readString(10, __dbResults);
  }
  public void readFields0(ResultSet __dbResults) throws SQLException {
    this.last_update = JdbcWritableBridge.readString(1, __dbResults);
    this.cdt = JdbcWritableBridge.readString(2, __dbResults);
    this.model = JdbcWritableBridge.readString(3, __dbResults);
    this.storage = JdbcWritableBridge.readString(4, __dbResults);
    this.zhishi = JdbcWritableBridge.readString(5, __dbResults);
    this.color = JdbcWritableBridge.readString(6, __dbResults);
    this.version = JdbcWritableBridge.readString(7, __dbResults);
    this.out_day = JdbcWritableBridge.readLong(8, __dbResults);
    this.out_all = JdbcWritableBridge.readLong(9, __dbResults);
    this.dt = JdbcWritableBridge.readString(10, __dbResults);
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
    JdbcWritableBridge.writeString(last_update, 1 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(cdt, 2 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(model, 3 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(storage, 4 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(zhishi, 5 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(color, 6 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(version, 7 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeLong(out_day, 8 + __off, -5, __dbStmt);
    JdbcWritableBridge.writeLong(out_all, 9 + __off, -5, __dbStmt);
    JdbcWritableBridge.writeString(dt, 10 + __off, 12, __dbStmt);
    return 10;
  }
  public void write0(PreparedStatement __dbStmt, int __off) throws SQLException {
    JdbcWritableBridge.writeString(last_update, 1 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(cdt, 2 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(model, 3 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(storage, 4 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(zhishi, 5 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(color, 6 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(version, 7 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeLong(out_day, 8 + __off, -5, __dbStmt);
    JdbcWritableBridge.writeLong(out_all, 9 + __off, -5, __dbStmt);
    JdbcWritableBridge.writeString(dt, 10 + __off, 12, __dbStmt);
  }
  public void readFields(DataInput __dataIn) throws IOException {
this.readFields0(__dataIn);  }
  public void readFields0(DataInput __dataIn) throws IOException {
    if (__dataIn.readBoolean()) { 
        this.last_update = null;
    } else {
    this.last_update = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.cdt = null;
    } else {
    this.cdt = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.model = null;
    } else {
    this.model = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.storage = null;
    } else {
    this.storage = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.zhishi = null;
    } else {
    this.zhishi = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.color = null;
    } else {
    this.color = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.version = null;
    } else {
    this.version = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.out_day = null;
    } else {
    this.out_day = Long.valueOf(__dataIn.readLong());
    }
    if (__dataIn.readBoolean()) { 
        this.out_all = null;
    } else {
    this.out_all = Long.valueOf(__dataIn.readLong());
    }
    if (__dataIn.readBoolean()) { 
        this.dt = null;
    } else {
    this.dt = Text.readString(__dataIn);
    }
  }
  public void write(DataOutput __dataOut) throws IOException {
    if (null == this.last_update) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, last_update);
    }
    if (null == this.cdt) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, cdt);
    }
    if (null == this.model) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, model);
    }
    if (null == this.storage) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, storage);
    }
    if (null == this.zhishi) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, zhishi);
    }
    if (null == this.color) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, color);
    }
    if (null == this.version) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, version);
    }
    if (null == this.out_day) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeLong(this.out_day);
    }
    if (null == this.out_all) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeLong(this.out_all);
    }
    if (null == this.dt) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, dt);
    }
  }
  public void write0(DataOutput __dataOut) throws IOException {
    if (null == this.last_update) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, last_update);
    }
    if (null == this.cdt) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, cdt);
    }
    if (null == this.model) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, model);
    }
    if (null == this.storage) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, storage);
    }
    if (null == this.zhishi) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, zhishi);
    }
    if (null == this.color) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, color);
    }
    if (null == this.version) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, version);
    }
    if (null == this.out_day) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeLong(this.out_day);
    }
    if (null == this.out_all) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeLong(this.out_all);
    }
    if (null == this.dt) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, dt);
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
    __sb.append(FieldFormatter.escapeAndEnclose(last_update==null?"null":last_update, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(cdt==null?"null":cdt, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(model==null?"null":model, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(storage==null?"null":storage, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(zhishi==null?"null":zhishi, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(color==null?"null":color, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(version==null?"null":version, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(out_day==null?"null":"" + out_day, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(out_all==null?"null":"" + out_all, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(dt==null?"null":dt, delimiters));
    if (useRecordDelim) {
      __sb.append(delimiters.getLinesTerminatedBy());
    }
    return __sb.toString();
  }
  public void toString0(DelimiterSet delimiters, StringBuilder __sb, char fieldDelim) {
    __sb.append(FieldFormatter.escapeAndEnclose(last_update==null?"null":last_update, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(cdt==null?"null":cdt, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(model==null?"null":model, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(storage==null?"null":storage, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(zhishi==null?"null":zhishi, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(color==null?"null":color, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(version==null?"null":version, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(out_day==null?"null":"" + out_day, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(out_all==null?"null":"" + out_all, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(dt==null?"null":dt, delimiters));
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
    if (__cur_str.equals("\\N")) { this.last_update = null; } else {
      this.last_update = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.cdt = null; } else {
      this.cdt = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.model = null; } else {
      this.model = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.storage = null; } else {
      this.storage = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.zhishi = null; } else {
      this.zhishi = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.color = null; } else {
      this.color = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.version = null; } else {
      this.version = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.out_day = null; } else {
      this.out_day = Long.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.out_all = null; } else {
      this.out_all = Long.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.dt = null; } else {
      this.dt = __cur_str;
    }

    } catch (RuntimeException e) {    throw new RuntimeException("Can't parse input data: '" + __cur_str + "'", e);    }  }

  private void __loadFromFields0(Iterator<String> __it) {
    String __cur_str = null;
    try {
    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.last_update = null; } else {
      this.last_update = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.cdt = null; } else {
      this.cdt = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.model = null; } else {
      this.model = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.storage = null; } else {
      this.storage = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.zhishi = null; } else {
      this.zhishi = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.color = null; } else {
      this.color = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.version = null; } else {
      this.version = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.out_day = null; } else {
      this.out_day = Long.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.out_all = null; } else {
      this.out_all = Long.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.dt = null; } else {
      this.dt = __cur_str;
    }

    } catch (RuntimeException e) {    throw new RuntimeException("Can't parse input data: '" + __cur_str + "'", e);    }  }

  public Object clone() throws CloneNotSupportedException {
    DMR_MOBILE_OUTFACT_DAILY o = (DMR_MOBILE_OUTFACT_DAILY) super.clone();
    return o;
  }

  public void clone0(DMR_MOBILE_OUTFACT_DAILY o) throws CloneNotSupportedException {
  }

  public Map<String, Object> getFieldMap() {
    Map<String, Object> __sqoop$field_map = new TreeMap<String, Object>();
    __sqoop$field_map.put("last_update", this.last_update);
    __sqoop$field_map.put("cdt", this.cdt);
    __sqoop$field_map.put("model", this.model);
    __sqoop$field_map.put("storage", this.storage);
    __sqoop$field_map.put("zhishi", this.zhishi);
    __sqoop$field_map.put("color", this.color);
    __sqoop$field_map.put("version", this.version);
    __sqoop$field_map.put("out_day", this.out_day);
    __sqoop$field_map.put("out_all", this.out_all);
    __sqoop$field_map.put("dt", this.dt);
    return __sqoop$field_map;
  }

  public void getFieldMap0(Map<String, Object> __sqoop$field_map) {
    __sqoop$field_map.put("last_update", this.last_update);
    __sqoop$field_map.put("cdt", this.cdt);
    __sqoop$field_map.put("model", this.model);
    __sqoop$field_map.put("storage", this.storage);
    __sqoop$field_map.put("zhishi", this.zhishi);
    __sqoop$field_map.put("color", this.color);
    __sqoop$field_map.put("version", this.version);
    __sqoop$field_map.put("out_day", this.out_day);
    __sqoop$field_map.put("out_all", this.out_all);
    __sqoop$field_map.put("dt", this.dt);
  }

  public void setField(String __fieldName, Object __fieldVal) {
    if ("last_update".equals(__fieldName)) {
      this.last_update = (String) __fieldVal;
    }
    else    if ("cdt".equals(__fieldName)) {
      this.cdt = (String) __fieldVal;
    }
    else    if ("model".equals(__fieldName)) {
      this.model = (String) __fieldVal;
    }
    else    if ("storage".equals(__fieldName)) {
      this.storage = (String) __fieldVal;
    }
    else    if ("zhishi".equals(__fieldName)) {
      this.zhishi = (String) __fieldVal;
    }
    else    if ("color".equals(__fieldName)) {
      this.color = (String) __fieldVal;
    }
    else    if ("version".equals(__fieldName)) {
      this.version = (String) __fieldVal;
    }
    else    if ("out_day".equals(__fieldName)) {
      this.out_day = (Long) __fieldVal;
    }
    else    if ("out_all".equals(__fieldName)) {
      this.out_all = (Long) __fieldVal;
    }
    else    if ("dt".equals(__fieldName)) {
      this.dt = (String) __fieldVal;
    }
    else {
      throw new RuntimeException("No such field: " + __fieldName);
    }
  }
  public boolean setField0(String __fieldName, Object __fieldVal) {
    if ("last_update".equals(__fieldName)) {
      this.last_update = (String) __fieldVal;
      return true;
    }
    else    if ("cdt".equals(__fieldName)) {
      this.cdt = (String) __fieldVal;
      return true;
    }
    else    if ("model".equals(__fieldName)) {
      this.model = (String) __fieldVal;
      return true;
    }
    else    if ("storage".equals(__fieldName)) {
      this.storage = (String) __fieldVal;
      return true;
    }
    else    if ("zhishi".equals(__fieldName)) {
      this.zhishi = (String) __fieldVal;
      return true;
    }
    else    if ("color".equals(__fieldName)) {
      this.color = (String) __fieldVal;
      return true;
    }
    else    if ("version".equals(__fieldName)) {
      this.version = (String) __fieldVal;
      return true;
    }
    else    if ("out_day".equals(__fieldName)) {
      this.out_day = (Long) __fieldVal;
      return true;
    }
    else    if ("out_all".equals(__fieldName)) {
      this.out_all = (Long) __fieldVal;
      return true;
    }
    else    if ("dt".equals(__fieldName)) {
      this.dt = (String) __fieldVal;
      return true;
    }
    else {
      return false;    }
  }
}
