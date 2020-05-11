Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2011CDDD5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 May 2020 16:54:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 88DD7617CF
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 May 2020 14:54:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7C6BD6181D; Mon, 11 May 2020 14:54:30 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,UNPARSEABLE_RELAY
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D6763617CC;
	Mon, 11 May 2020 14:53:56 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C7820617CF
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2020 14:53:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BB83061831; Mon, 11 May 2020 14:53:51 +0000 (UTC)
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by lists.linaro.org (Postfix) with ESMTPS id D39B4617CF
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2020 14:53:10 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04BEh4cb141576;
 Mon, 11 May 2020 14:53:08 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 30x3mbnhn4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 11 May 2020 14:53:08 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04BEiB74147018;
 Mon, 11 May 2020 14:51:08 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 30x69r5j3w-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 11 May 2020 14:51:08 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 04BEp7LC011848;
 Mon, 11 May 2020 14:51:07 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 11 May 2020 07:51:07 -0700
Date: Mon, 11 May 2020 17:51:00 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: srinivas.kandagatla@linaro.org
Message-ID: <20200511145100.GA221682@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9617
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 malwarescore=0 adultscore=0
 spamscore=0 suspectscore=3 mlxscore=0 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005110117
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9617
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 impostorscore=0
 mlxscore=0 suspectscore=3 bulkscore=0 mlxlogscore=999 phishscore=0
 malwarescore=0 lowpriorityscore=0 spamscore=0 adultscore=0 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005110117
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [bug report] misc: fastrpc: Add support for context
	Invoke method
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

SGVsbG8gU3Jpbml2YXMgS2FuZGFnYXRsYSwKClRoZSBwYXRjaCBjNjhjZmI3MThjOGY6ICJtaXNj
OiBmYXN0cnBjOiBBZGQgc3VwcG9ydCBmb3IgY29udGV4dApJbnZva2UgbWV0aG9kIiBmcm9tIEZl
YiA4LCAyMDE5LCBsZWFkcyB0byB0aGUgZm9sbG93aW5nIHN0YXRpYwpjaGVja2VyIHdhcm5pbmc6
CgoJZHJpdmVycy9taXNjL2Zhc3RycGMuYzo5OTAgZmFzdHJwY19pbnRlcm5hbF9pbnZva2UoKQoJ
d2FybjogJ2N0eC0+cmVmY291bnQucmVmY291bnQucmVmLmNvdW50ZXInIG5vdCBkZWNyZW1lbnRl
ZCBvbiBsaW5lczogOTkwLgoKZHJpdmVycy9taXNjL2Zhc3RycGMuYwogICA5MjUgIHN0YXRpYyBp
bnQgZmFzdHJwY19pbnRlcm5hbF9pbnZva2Uoc3RydWN0IGZhc3RycGNfdXNlciAqZmwsICB1MzIg
a2VybmVsLAogICA5MjYgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdTMyIGhh
bmRsZSwgdTMyIHNjLAogICA5MjcgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
c3RydWN0IGZhc3RycGNfaW52b2tlX2FyZ3MgKmFyZ3MpCiAgIDkyOCAgewogICA5MjkgICAgICAg
ICAgc3RydWN0IGZhc3RycGNfaW52b2tlX2N0eCAqY3R4ID0gTlVMTDsKICAgOTMwICAgICAgICAg
IGludCBlcnIgPSAwOwogICA5MzEgIAogICA5MzIgICAgICAgICAgaWYgKCFmbC0+c2N0eCkKICAg
OTMzICAgICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7CiAgIDkzNCAgCiAgIDkzNSAgICAg
ICAgICBpZiAoIWZsLT5jY3R4LT5ycGRldikKICAgOTM2ICAgICAgICAgICAgICAgICAgcmV0dXJu
IC1FUElQRTsKICAgOTM3ICAKICAgOTM4ICAgICAgICAgIGN0eCA9IGZhc3RycGNfY29udGV4dF9h
bGxvYyhmbCwga2VybmVsLCBzYywgYXJncyk7CgpyZWZjb3VudCBpcyAxLgoKICAgOTM5ICAgICAg
ICAgIGlmIChJU19FUlIoY3R4KSkKICAgOTQwICAgICAgICAgICAgICAgICAgcmV0dXJuIFBUUl9F
UlIoY3R4KTsKICAgOTQxICAKICAgOTQyICAgICAgICAgIGlmIChjdHgtPm5zY2FsYXJzKSB7CiAg
IDk0MyAgICAgICAgICAgICAgICAgIGVyciA9IGZhc3RycGNfZ2V0X2FyZ3Moa2VybmVsLCBjdHgp
OwogICA5NDQgICAgICAgICAgICAgICAgICBpZiAoZXJyKQogICA5NDUgICAgICAgICAgICAgICAg
ICAgICAgICAgIGdvdG8gYmFpbDsKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeXl5e
Xl5eXl4KU3RpbGwgaG9sZGluZyBvbmUgcmVmY291bnQuCgogICA5NDYgICAgICAgICAgfQogICA5
NDcgIAogICA5NDggICAgICAgICAgLyogbWFrZSBzdXJlIHRoYXQgYWxsIENQVSBtZW1vcnkgd3Jp
dGVzIGFyZSBzZWVuIGJ5IERTUCAqLwogICA5NDkgICAgICAgICAgZG1hX3dtYigpOwogICA5NTAg
ICAgICAgICAgLyogU2VuZCBpbnZva2UgYnVmZmVyIHRvIHJlbW90ZSBkc3AgKi8KICAgOTUxICAg
ICAgICAgIGVyciA9IGZhc3RycGNfaW52b2tlX3NlbmQoZmwtPnNjdHgsIGN0eCwga2VybmVsLCBo
YW5kbGUpOwogICAgICAgICAgICAgICAgICAgICAgXl5eXl5eXl5eXl5eXl5eXl5eXgpUYWtlcyBh
IHJlZmVyZW5jZSBjb3VudC4gIFJlZmNvdW50IGlzIG5vdyAyLgoKICAgOTUyICAgICAgICAgIGlm
IChlcnIpCiAgIDk1MyAgICAgICAgICAgICAgICAgIGdvdG8gYmFpbDsKICAgOTU0ICAKICAgOTU1
ICAgICAgICAgIGlmIChrZXJuZWwpIHsKICAgOTU2ICAgICAgICAgICAgICAgICAgaWYgKCF3YWl0
X2Zvcl9jb21wbGV0aW9uX3RpbWVvdXQoJmN0eC0+d29yaywgMTAgKiBIWikpCiAgIDk1NyAgICAg
ICAgICAgICAgICAgICAgICAgICAgZXJyID0gLUVUSU1FRE9VVDsKICAgOTU4ICAgICAgICAgIH0g
ZWxzZSB7CiAgIDk1OSAgICAgICAgICAgICAgICAgIGVyciA9IHdhaXRfZm9yX2NvbXBsZXRpb25f
aW50ZXJydXB0aWJsZSgmY3R4LT53b3JrKTsKClRoaXMgZHJvcHMgYSByZWZjb3VudC4KCiAgIDk2
MCAgICAgICAgICB9CiAgIDk2MSAgCiAgIDk2MiAgICAgICAgICBpZiAoZXJyKQogICA5NjMgICAg
ICAgICAgICAgICAgICBnb3RvIGJhaWw7CiAgIDk2NCAgCiAgIDk2NSAgICAgICAgICAvKiBDaGVj
ayB0aGUgcmVzcG9uc2UgZnJvbSByZW1vdGUgZHNwICovCiAgIDk2NiAgICAgICAgICBlcnIgPSBj
dHgtPnJldHZhbDsKICAgOTY3ICAgICAgICAgIGlmIChlcnIpCiAgIDk2OCAgICAgICAgICAgICAg
ICAgIGdvdG8gYmFpbDsKICAgOTY5ICAKICAgOTcwICAgICAgICAgIGlmIChjdHgtPm5zY2FsYXJz
KSB7CiAgIDk3MSAgICAgICAgICAgICAgICAgIC8qIG1ha2Ugc3VyZSB0aGF0IGFsbCBtZW1vcnkg
d3JpdGVzIGJ5IERTUCBhcmUgc2VlbiBieSBDUFUgKi8KICAgOTcyICAgICAgICAgICAgICAgICAg
ZG1hX3JtYigpOwogICA5NzMgICAgICAgICAgICAgICAgICAvKiBwb3B1bGF0ZSBhbGwgdGhlIG91
dHB1dCBidWZmZXJzIHdpdGggcmVzdWx0cyAqLwogICA5NzQgICAgICAgICAgICAgICAgICBlcnIg
PSBmYXN0cnBjX3B1dF9hcmdzKGN0eCwga2VybmVsKTsKICAgOTc1ICAgICAgICAgICAgICAgICAg
aWYgKGVycikKICAgOTc2ICAgICAgICAgICAgICAgICAgICAgICAgICBnb3RvIGJhaWw7CiAgIDk3
NyAgICAgICAgICB9CiAgIDk3OCAgCiAgIDk3OSAgYmFpbDoKICAgOTgwICAgICAgICAgIGlmIChl
cnIgIT0gLUVSRVNUQVJUU1lTICYmIGVyciAhPSAtRVRJTUVET1VUKSB7CiAgIDk4MSAgICAgICAg
ICAgICAgICAgIC8qIFdlIGFyZSBkb25lIHdpdGggdGhpcyBjb21wdXRlIGNvbnRleHQgKi8KICAg
OTgyICAgICAgICAgICAgICAgICAgc3Bpbl9sb2NrKCZmbC0+bG9jayk7CiAgIDk4MyAgICAgICAg
ICAgICAgICAgIGxpc3RfZGVsKCZjdHgtPm5vZGUpOwogICA5ODQgICAgICAgICAgICAgICAgICBz
cGluX3VubG9jaygmZmwtPmxvY2spOwogICA5ODUgICAgICAgICAgICAgICAgICBmYXN0cnBjX2Nv
bnRleHRfcHV0KGN0eCk7CgpJZiB3ZSdyZSBob2xkaW5nIHR3byByZWZjb3VudHMgdGhlbiBJIHRo
aW5rIHRoaXMgbGVha3MuCgogICA5ODYgICAgICAgICAgfQogICA5ODcgICAgICAgICAgaWYgKGVy
cikKICAgOTg4ICAgICAgICAgICAgICAgICAgZGV2X2RiZyhmbC0+c2N0eC0+ZGV2LCAiRXJyb3I6
IEludm9rZSBGYWlsZWQgJWRcbiIsIGVycik7CiAgIDk4OSAgCiAgIDk5MCAgICAgICAgICByZXR1
cm4gZXJyOwogICA5OTEgIH0KCnJlZ2FyZHMsCmRhbiBjYXJwZW50ZXIKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
