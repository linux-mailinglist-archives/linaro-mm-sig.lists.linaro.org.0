Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE9A14F8E3
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  1 Feb 2020 17:27:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 446C26088A
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  1 Feb 2020 16:27:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 373F5608C3; Sat,  1 Feb 2020 16:27:03 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_PASS,SUBJ_OBFU_PUNCT_FEW,
	SUBJ_OBFU_PUNCT_MANY,UNPARSEABLE_RELAY autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B49F5608E3;
	Sat,  1 Feb 2020 16:26:36 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9D5566088A
 for <linaro-mm-sig@lists.linaro.org>; Sat,  1 Feb 2020 16:26:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7EB80608E3; Sat,  1 Feb 2020 16:26:34 +0000 (UTC)
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by lists.linaro.org (Postfix) with ESMTPS id 494546088A
 for <linaro-mm-sig@lists.linaro.org>; Sat,  1 Feb 2020 16:26:33 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 011GO2ho170066;
 Sat, 1 Feb 2020 16:26:05 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2xw0rtsr75-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 01 Feb 2020 16:26:04 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 011GNKM2187896;
 Sat, 1 Feb 2020 16:26:04 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2xvycydah3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 01 Feb 2020 16:26:03 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 011GPpS3016390;
 Sat, 1 Feb 2020 16:25:51 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sat, 01 Feb 2020 08:25:50 -0800
Date: Sat, 1 Feb 2020 19:25:37 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Hillf Danton <hdanton@sina.com>
Message-ID: <20200201162537.GK1778@kadam>
References: <20200201043209.13412-1-hdanton@sina.com>
 <20200201090247.10928-1-hdanton@sina.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200201090247.10928-1-hdanton@sina.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9518
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2002010121
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9518
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2002010121
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: robdclark@chromium.org, daniel@ffwll.ch, davem@davemloft.net,
 airlied@linux.ie, netdev@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, eric@anholt.net, seanpaul@chromium.org,
 dri-devel@lists.freedesktop.org,
 syzbot <syzbot+0dc4444774d419e916c8@syzkaller.appspotmail.com>,
 alexander.deucher@amd.com, linux-media@vger.kernel.org,
 christian.koenig@amd.com, emil.velikov@collabora.com
Subject: Re: [Linaro-mm-sig] KASAN: use-after-free Read in
	vgem_gem_dumb_create
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

T24gU2F0LCBGZWIgMDEsIDIwMjAgYXQgMDU6MDI6NDdQTSArMDgwMCwgSGlsbGYgRGFudG9uIHdy
b3RlOgo+IAo+IE9uIFNhdCwgMSBGZWIgMjAyMCAwOToxNzo1NyArMDMwMCBEYW4gQ2FycGVudGVy
IHdyb3RlOgo+ID4gT24gU2F0LCBGZWIgMDEsIDIwMjAgYXQgMTI6MzI6MDlQTSArMDgwMCwgSGls
bGYgRGFudG9uIHdyb3RlOgo+ID4gPgo+ID4gPiBSZWxlYXNlIG9iaiBpbiBlcnJvciBwYXRoLgo+
ID4gPiAKPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3ZnZW0vdmdlbV9kcnYuYwo+ID4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vdmdlbS92Z2VtX2Rydi5jCj4gPiA+IEBAIC0xOTYsMTAgKzE5
NiwxMCBAQCBzdGF0aWMgc3RydWN0IGRybV9nZW1fb2JqZWN0ICp2Z2VtX2dlbV9jCj4gPiA+ICAJ
CXJldHVybiBFUlJfQ0FTVChvYmopOwo+ID4gPiAgCj4gPiA+ICAJcmV0ID0gZHJtX2dlbV9oYW5k
bGVfY3JlYXRlKGZpbGUsICZvYmotPmJhc2UsIGhhbmRsZSk7Cj4gPiA+IC0JZHJtX2dlbV9vYmpl
Y3RfcHV0X3VubG9ja2VkKCZvYmotPmJhc2UpOwo+ID4gPiAtCWlmIChyZXQpCj4gPiA+ICsJaWYg
KHJldCkgewo+ID4gPiArCQlkcm1fZ2VtX29iamVjdF9wdXRfdW5sb2NrZWQoJm9iai0+YmFzZSk7
Cj4gPiA+ICAJCXJldHVybiBFUlJfUFRSKHJldCk7Cj4gPiA+IC0KPiA+ID4gKwl9Cj4gPiA+ICAJ
cmV0dXJuICZvYmotPmJhc2U7Cj4gPiAKPiA+IE9oIHllYWguICBJdCdzIHdlaXJkIHRoYXQgd2Ug
bmV2ZXIgbm90aWNlZCB0aGUgc3VjY2VzcyBwYXRoIHdhcyBicm9rZW4uCj4gPiBJdCdzIGJlZW4g
dGhhdCB3YXkgZm9yIHRocmVlIHllYXJzIGFuZCBubyBvbmUgbm90aWNlZCBhdCBhbGwuICBWZXJ5
Cj4gPiBzdHJhbmdlLgo+ID4gCj4gPiBBbnl3YXksIGl0IGFscmVhZHkgZ2V0cyBmcmVlZCBvbiBl
cnJvciBpbiBkcm1fZ2VtX2hhbmRsZV9jcmVhdGUoKSBzbwo+ID4gd2Ugc2hvdWxkIGp1c3QgZGVs
ZXRlIHRoZSBkcm1fZ2VtX29iamVjdF9wdXRfdW5sb2NrZWQoKSBoZXJlIGl0IGxvb2tzCj4gPiBs
aWtlLgo+IAo+IEdvb2QgY2F0Y2gsIERhbiA6UAo+IFdvdWxkIHlvdSBwbGVhc2UgcG9zdCBhIHBh
dGNoIHNvbWV0aW1lIGNvbnZlbmllbnQgbmV4dCB3ZWVrPwoKU3VyZS4gIFdpbGwgZG8uCgpyZWdh
cmRzLApkYW4gY2FycGVudGVyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
YXJvLW1tLXNpZwo=
