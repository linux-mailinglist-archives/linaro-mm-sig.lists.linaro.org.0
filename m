Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 699EB147EE9
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Jan 2020 11:42:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7256660E75
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Jan 2020 10:42:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 65779619D9; Fri, 24 Jan 2020 10:42:51 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_PASS,SUBJ_OBFU_PUNCT_FEW,UNPARSEABLE_RELAY
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0B203617B3;
	Fri, 24 Jan 2020 10:41:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 52AE560E68
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Jan 2020 10:32:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 46EC160EA5; Fri, 24 Jan 2020 10:32:50 +0000 (UTC)
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by lists.linaro.org (Postfix) with ESMTPS id 5A9DD60E68
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Jan 2020 10:32:48 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00OAN7oN051293;
 Fri, 24 Jan 2020 10:32:40 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2xksyqr7b9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 24 Jan 2020 10:32:40 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00OAWO3t102935;
 Fri, 24 Jan 2020 10:32:39 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2xqmwe85tq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 24 Jan 2020 10:32:39 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 00OAVY4T023294;
 Fri, 24 Jan 2020 10:31:35 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 24 Jan 2020 02:31:33 -0800
Date: Fri, 24 Jan 2020 13:31:23 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200124103123.GL1847@kadam>
References: <20200124101311.drryaegcdc7d4x7e@kili.mountain>
 <157986125623.2524.13979010293671565726@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157986125623.2524.13979010293671565726@skylake-alporthouse-com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9509
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001240086
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9509
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001240086
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: kernel-janitors@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: fix locking in sync_print_obj()
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

T24gRnJpLCBKYW4gMjQsIDIwMjAgYXQgMTA6MjA6NTZBTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgRGFuIENhcnBlbnRlciAoMjAyMC0wMS0yNCAxMDoxMzoxMikKPiA+IFRo
aXMgaXMgYWx3YXlzIGNhbGxlZCB3aXRoIElSUXMgZGlzYWJsZWQgYW5kIHdlIGRvbid0IGFjdHVh
bGx5IHdhbnQgdG8KPiA+IGVuYWJsZSBJUlFzIGF0IHRoZSBlbmQuCj4gPiAKPiA+IEZpeGVzOiBh
NmFhOGZjYTRkNzkgKCJkbWEtYnVmL3N3LXN5bmM6IFJlZHVjZSBpcnFzYXZlL2lycXJlc3RvcmUg
ZnJvbSBrbm93biBjb250ZXh0IikKPiA+IFNpZ25lZC1vZmYtYnk6IERhbiBDYXJwZW50ZXIgPGRh
bi5jYXJwZW50ZXJAb3JhY2xlLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZG1hLWJ1Zi9zeW5j
X2RlYnVnLmMgfCA1ICsrKy0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9zeW5j
X2RlYnVnLmMgYi9kcml2ZXJzL2RtYS1idWYvc3luY19kZWJ1Zy5jCj4gPiBpbmRleCAxMDEzOTRm
MTY5MzAuLjk1MjMzMTM0NGIxYyAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9zeW5j
X2RlYnVnLmMKPiA+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmMKPiA+IEBAIC0x
MDcsMTUgKzEwNywxNiBAQCBzdGF0aWMgdm9pZCBzeW5jX3ByaW50X2ZlbmNlKHN0cnVjdCBzZXFf
ZmlsZSAqcywKPiA+ICBzdGF0aWMgdm9pZCBzeW5jX3ByaW50X29iaihzdHJ1Y3Qgc2VxX2ZpbGUg
KnMsIHN0cnVjdCBzeW5jX3RpbWVsaW5lICpvYmopCj4gPiAgewo+ID4gICAgICAgICBzdHJ1Y3Qg
bGlzdF9oZWFkICpwb3M7Cj4gPiArICAgICAgIHVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4gPiAgCj4g
PiAgICAgICAgIHNlcV9wcmludGYocywgIiVzOiAlZFxuIiwgb2JqLT5uYW1lLCBvYmotPnZhbHVl
KTsKPiA+ICAKPiA+IC0gICAgICAgc3Bpbl9sb2NrX2lycSgmb2JqLT5sb2NrKTsKPiA+ICsgICAg
ICAgc3Bpbl9sb2NrX2lycXNhdmUoJm9iai0+bG9jaywgZmxhZ3MpOwo+IAo+IEV4YWN0bHksIGl0
IGNhbiBiZSBqdXN0IHNwaW5fbG9jaygpIGFzIHRoZSBpcnEgc3RhdGUgaXMga25vd24uCj4gCgpJ
IGRpZCBjb25zaWRlciB0aGF0IGJ1dCBJIHdhc24ndCBzdXJlIGhvdyB0aGlzIGlzIGdvaW5nIHRv
IGJlIHVzZWQgaW4KdGhlIGZ1dHVyZSBzbyBJIHRvb2sgYSBjb25zZXJ2YXRpdmUgYXBwcm9hY2gu
Cgo+IE9uY2UgYWdhaW4gSSBxdWVzdGlvbiB3aHkgdGhpcyBbc3luY19kZWJ1Zy5jXSBjb2RlIGV2
ZW4gZXhpc3RzLgoKTm8gaWRlYS4KCnJlZ2FyZHMsCmRhbiBjYXJwZW50ZXIKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFy
by5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
