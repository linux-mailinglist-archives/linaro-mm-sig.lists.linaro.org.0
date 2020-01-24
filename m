Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C1B147ECE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Jan 2020 11:36:51 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 25935619E2
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Jan 2020 10:36:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 02B45619E4; Fri, 24 Jan 2020 10:36:50 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_PASS,SUBJ_OBFU_PUNCT_FEW,UNPARSEABLE_RELAY
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CC084617B3;
	Fri, 24 Jan 2020 10:35:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2B76D603C1
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Jan 2020 10:14:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 08D0060E75; Fri, 24 Jan 2020 10:14:22 +0000 (UTC)
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by lists.linaro.org (Postfix) with ESMTPS id 6F535603C1
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Jan 2020 10:14:20 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00OAE3dI055653;
 Fri, 24 Jan 2020 10:14:10 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2xktnrqy8f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 24 Jan 2020 10:14:10 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00OAE2vD065231;
 Fri, 24 Jan 2020 10:14:09 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 2xqmwe5kww-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 24 Jan 2020 10:14:09 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 00OADLDS028027;
 Fri, 24 Jan 2020 10:13:21 GMT
Received: from kili.mountain (/129.205.23.165)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 24 Jan 2020 02:13:20 -0800
Date: Fri, 24 Jan 2020 13:13:12 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
 Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200124101311.drryaegcdc7d4x7e@kili.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
User-Agent: NeoMutt/20170113 (1.7.2)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9509
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001240084
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9509
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001240084
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: kernel-janitors@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH] dma-buf: fix locking in sync_print_obj()
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

VGhpcyBpcyBhbHdheXMgY2FsbGVkIHdpdGggSVJRcyBkaXNhYmxlZCBhbmQgd2UgZG9uJ3QgYWN0
dWFsbHkgd2FudCB0bwplbmFibGUgSVJRcyBhdCB0aGUgZW5kLgoKRml4ZXM6IGE2YWE4ZmNhNGQ3
OSAoImRtYS1idWYvc3ctc3luYzogUmVkdWNlIGlycXNhdmUvaXJxcmVzdG9yZSBmcm9tIGtub3du
IGNvbnRleHQiKQpTaWduZWQtb2ZmLWJ5OiBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVudGVyQG9y
YWNsZS5jb20+Ci0tLQogZHJpdmVycy9kbWEtYnVmL3N5bmNfZGVidWcuYyB8IDUgKysrLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9kbWEtYnVmL3N5bmNfZGVidWcuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2Rl
YnVnLmMKaW5kZXggMTAxMzk0ZjE2OTMwLi45NTIzMzEzNDRiMWMgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL3N5bmNfZGVidWcu
YwpAQCAtMTA3LDE1ICsxMDcsMTYgQEAgc3RhdGljIHZvaWQgc3luY19wcmludF9mZW5jZShzdHJ1
Y3Qgc2VxX2ZpbGUgKnMsCiBzdGF0aWMgdm9pZCBzeW5jX3ByaW50X29iaihzdHJ1Y3Qgc2VxX2Zp
bGUgKnMsIHN0cnVjdCBzeW5jX3RpbWVsaW5lICpvYmopCiB7CiAJc3RydWN0IGxpc3RfaGVhZCAq
cG9zOworCXVuc2lnbmVkIGxvbmcgZmxhZ3M7CiAKIAlzZXFfcHJpbnRmKHMsICIlczogJWRcbiIs
IG9iai0+bmFtZSwgb2JqLT52YWx1ZSk7CiAKLQlzcGluX2xvY2tfaXJxKCZvYmotPmxvY2spOwor
CXNwaW5fbG9ja19pcnFzYXZlKCZvYmotPmxvY2ssIGZsYWdzKTsKIAlsaXN0X2Zvcl9lYWNoKHBv
cywgJm9iai0+cHRfbGlzdCkgewogCQlzdHJ1Y3Qgc3luY19wdCAqcHQgPSBjb250YWluZXJfb2Yo
cG9zLCBzdHJ1Y3Qgc3luY19wdCwgbGluayk7CiAJCXN5bmNfcHJpbnRfZmVuY2UocywgJnB0LT5i
YXNlLCBmYWxzZSk7CiAJfQotCXNwaW5fdW5sb2NrX2lycSgmb2JqLT5sb2NrKTsKKwlzcGluX3Vu
bG9ja19pcnFyZXN0b3JlKCZvYmotPmxvY2ssIGZsYWdzKTsKIH0KIAogc3RhdGljIHZvaWQgc3lu
Y19wcmludF9zeW5jX2ZpbGUoc3RydWN0IHNlcV9maWxlICpzLAotLSAKMi4xMS4wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5s
aW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
