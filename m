Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D51B12AA5F4
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  7 Nov 2020 15:27:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 14DAD607A4
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  7 Nov 2020 14:27:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 08FA260850; Sat,  7 Nov 2020 14:27:34 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DA6356088F;
	Sat,  7 Nov 2020 14:27:00 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 36E1B607A4
 for <linaro-mm-sig@lists.linaro.org>; Sat,  7 Nov 2020 14:26:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 19C5C6088F; Sat,  7 Nov 2020 14:26:57 +0000 (UTC)
Received: from asavdk4.altibox.net (asavdk4.altibox.net [109.247.116.15])
 by lists.linaro.org (Postfix) with ESMTPS id 9D4DC607A4
 for <linaro-mm-sig@lists.linaro.org>; Sat,  7 Nov 2020 14:26:55 +0000 (UTC)
Received: from ravnborg.org (unknown [188.228.123.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id E00BD80532;
 Sat,  7 Nov 2020 15:26:52 +0100 (CET)
Date: Sat, 7 Nov 2020 15:26:51 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Lee Jones <lee.jones@linaro.org>
Message-ID: <20201107142651.GA1014611@ravnborg.org>
References: <20201106214949.2042120-1-lee.jones@linaro.org>
 <20201106214949.2042120-11-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201106214949.2042120-11-lee.jones@linaro.org>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VafZwmh9 c=1 sm=1 tr=0
 a=S6zTFyMACwkrwXSdXUNehg==:117 a=S6zTFyMACwkrwXSdXUNehg==:17
 a=IkcTkHD0fZMA:10 a=zd2uoN0lAAAA:8 a=KKAkSRfTAAAA:8 a=e5mUnYsNAAAA:8
 a=VwQbUJbxAAAA:8 a=ikXVT_u04ppS6bpDQeoA:9 a=QEXdDO2ut3YA:10
 a=cvBusfyB2V15izCimMoJ:22 a=Vxmtnl_E_bksehYqCbjh:22
 a=AjGcO6oz07-iQ99wixmX:22
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 amd-gfx@lists.freedesktop.org, Alex Deucher <alexander.deucher@amd.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 10/19] drm/radeon/radeon: Move prototype
 into shared header
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

SGkgTGVlLAoKT24gRnJpLCBOb3YgMDYsIDIwMjAgYXQgMDk6NDk6NDBQTSArMDAwMCwgTGVlIEpv
bmVzIHdyb3RlOgo+IFVuZm9ydHVuYXRlbHksIGEgc3VpdGFibGUgb25lIGRpZG4ndCBhbHJlYWR5
IGV4aXN0Lgo+IAo+IEZpeGVzIHRoZSBmb2xsb3dpbmcgVz0xIGtlcm5lbCBidWlsZCB3YXJuaW5n
KHMpOgo+IAo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9kZXZpY2UuYzo2Mzc6Njog
d2FybmluZzogbm8gcHJldmlvdXMgcHJvdG90eXBlIGZvciDigJhyYWRlb25fZGV2aWNlX2lzX3Zp
cnR1YWzigJkgWy1XbWlzc2luZy1wcm90b3R5cGVzXQo+ICA2MzcgfCBib29sIHJhZGVvbl9kZXZp
Y2VfaXNfdmlydHVhbCh2b2lkKQo+ICB8IF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+IAo+IENj
OiBBbGV4IERldWNoZXIgPGFsZXhhbmRlci5kZXVjaGVyQGFtZC5jb20+Cj4gQ2M6ICJDaHJpc3Rp
YW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IENjOiBEYXZpZCBBaXJsaWUg
PGFpcmxpZWRAbGludXguaWU+Cj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4K
PiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4KPiBDYzogYW1kLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwo+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCj4gU2lnbmVkLW9mZi1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNA
bGluYXJvLm9yZz4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fZGV2aWNl
LmMgfCAgMSArCj4gIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2RldmljZS5oIHwgMzIg
KysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRl
b25fZHJ2LmMgICAgfCAgMyArLS0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAzNCBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL3Jh
ZGVvbi9yYWRlb25fZGV2aWNlLmgKCk90aGVyIHB1YmxpYyBmdW5jdGlvbnMgaW4gcmFkZW9uX2Rl
dmljZS5jIGhhdmUgdGhlaXIgcHJvdG90eXBlIGluCnJhZGVvbi5oIC0gZm9yIGV4YW1wbGUgcmFk
ZW9uX2lzX3B4KCkKCkFkZCByYWRlb25fZGV2aWNlX2lzX3ZpcnR1YWwoKSB0aGVyZSBzbyB3ZSBh
dm9paWQgdGhpcyBuZXcgaGVhZGVyLgoKCVNhbQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlz
dGluZm8vbGluYXJvLW1tLXNpZwo=
