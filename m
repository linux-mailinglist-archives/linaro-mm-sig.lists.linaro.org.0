Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3005B2AA05B
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 Nov 2020 23:27:10 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5DFF0665A5
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 Nov 2020 22:27:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4AD6B665FA; Fri,  6 Nov 2020 22:27:09 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1F5EC619C1;
	Fri,  6 Nov 2020 22:26:38 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CE54B60F0D
 for <linaro-mm-sig@lists.linaro.org>; Fri,  6 Nov 2020 22:26:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AC75C619C1; Fri,  6 Nov 2020 22:26:35 +0000 (UTC)
Received: from asavdk3.altibox.net (asavdk3.altibox.net [109.247.116.14])
 by lists.linaro.org (Postfix) with ESMTPS id 1BDA260F0D
 for <linaro-mm-sig@lists.linaro.org>; Fri,  6 Nov 2020 22:26:34 +0000 (UTC)
Received: from ravnborg.org (unknown [188.228.123.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 89B9520068;
 Fri,  6 Nov 2020 23:26:31 +0100 (CET)
Date: Fri, 6 Nov 2020 23:26:30 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Lee Jones <lee.jones@linaro.org>
Message-ID: <20201106222630.GD826715@ravnborg.org>
References: <20201106214949.2042120-1-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201106214949.2042120-1-lee.jones@linaro.org>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VbvZwmh9 c=1 sm=1 tr=0
 a=S6zTFyMACwkrwXSdXUNehg==:117 a=S6zTFyMACwkrwXSdXUNehg==:17
 a=kj9zAlcOel0A:10 a=jxsCkVyRRZrjTV7aRhQA:9 a=CjuIK1q_8ugA:10
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Faith <faith@valinux.com>, Alex Deucher <alexander.deucher@amd.com>,
 Andy Gross <andy.gross@ti.com>, David Airlie <airlied@linux.ie>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, linux-kernel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, Rob Clark <rob.clark@linaro.org>,
 linaro-mm-sig@lists.linaro.org, Leo Li <sunpeng.li@amd.com>,
 Huang Rui <ray.huang@amd.com>, dri-devel@lists.freedesktop.org,
 Keith Whitwell <keith@tungstengraphics.com>,
 Jeff Hartmann <jhartmann@valinux.com>, Rob Clark <rob@ti.com>,
 Gareth Hughes <gareth@valinux.com>,
 Christian Koenig <christian.koenig@amd.com>,
 by <jhartmann@precisioninsight.com>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 00/19] [Set 2] Rid W=1 warnings from GPU
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

SGkgTGVlIGFuZCBEUk0gZm9sa3MuCgpPbiBGcmksIE5vdiAwNiwgMjAyMCBhdCAwOTo0OTozMFBN
ICswMDAwLCBMZWUgSm9uZXMgd3JvdGU6Cj4gVGhpcyBzZXQgaXMgcGFydCBvZiBhIGxhcmdlciBl
ZmZvcnQgYXR0ZW1wdGluZyB0byBjbGVhbi11cCBXPTEKPiBrZXJuZWwgYnVpbGRzLCB3aGljaCBh
cmUgY3VycmVudGx5IG92ZXJ3aGVsbWluZ2x5IHJpZGRsZWQgd2l0aAo+IG5pZ2dseSBsaXR0bGUg
d2FybmluZ3MuCj4gCj4gVGhlcmUgYXJlIDUwMDAgd2FybmluZ3MgdG8gd29yayB0aHJvdWdoLiAg
SXQgd2lsbCB0YWtlIGEgY291cGxlIG1vcmUKPiBzZXRzLiAgQWx0aG91Z2gsICgiZHJtL2FtZC9k
aXNwbGF5L2RjL2Jhc2ljcy9maXhwdDMxXzMyOiBNb3ZlCj4gdmFyaWFibGVzIHRvIHdoZXJlIHRo
ZXkncmUgdXNlZCIpIGRvZXMgdGFrZSBjYXJlIG9mIDIwMDAgb2YgdGhlbSEKPiAKPiBMZWUgSm9u
ZXMgKDE5KToKPiAgIGRybS90dG0vdHRtX3JhbmdlX21hbmFnZXI6IERlbW90ZSBub24tY29uZm9y
bWFudCBrZXJuZWwtZG9jIGhlYWRlcgo+ICAgZHJtL3IxMjgvYXRpX3BjaWdhcnQ6IFNvdXJjZSBm
aWxlIGhlYWRlcnMgYXJlIG5vdCBnb29kIGNhbmRpZGF0ZXMgZm9yCj4gICAgIGtlcm5lbC1kb2MK
QXBwbGllZAoKPiAgIGRybS9zZWxmdGVzdHMvdGVzdC1kcm1fZHBfbXN0X2hlbHBlcjogTW92ZQo+
ICAgICAnc2lkZWJhbmRfbXNnX3JlcV9lbmNvZGVfZGVjb2RlJyBvbnRvIHRoZSBoZWFwCj4gICBk
cm0vbWdhL21nYV9kbWE6IERlbW90ZSBrZXJuZWwtZG9jIGFidXNlcnMgdG8gc3RhbmRhcmQgY29t
bWVudCBibG9ja3MKPiAgIGRybS9tZ2EvbWdhX3N0YXRlOiBSZW1vdmUgdW51c2VkIHZhcmlhYmxl
ICdidWZfcHJpdicKQXBwbGllZCB4MgoKPiAgIGRybS9yYWRlb24vYXRvbTogTW92ZSBwcm90b3R5
cGUgaW50byBzaGFyZWQgbG9jYXRpb24KPiAgIGRybS9yYWRlb24vcmFkZW9uX2ttczogSW5jbHVk
ZSBoZWFkZXIgY29udGFpbmluZyBvdXIgb3duIHByb3RvdHlwZXMKPiAgIGRybS9vbWFwZHJtL29t
YXBfZ2VtOiBGaXggbWlzbmFtZWQgYW5kIG1pc3NpbmcgcGFyYW1ldGVyIGRlc2NyaXB0aW9ucwo+
ICAgZHJtL29tYXBkcm0vb21hcF9kbW1fdGlsZXI6IERlbW90ZSBhYnVzaXZlIHVzZSBvZiBrZXJu
ZWwtZG9jIGZvcm1hdAo+ICAgZHJtL3JhZGVvbi9yYWRlb246IE1vdmUgcHJvdG90eXBlIGludG8g
c2hhcmVkIGhlYWRlcgo+ICAgZHJtL3JhZGVvbi9yYWRlb25fZHJ2OiBTb3VyY2UgZmlsZSBoZWFk
ZXJzIGFyZSBub3QgZ29vZCBjYW5kaWRhdGVzIGZvcgo+ICAgICBrZXJuZWwtZG9jCj4gICBkcm0v
YW1kL2Rpc3BsYXkvZGMvYmFzaWNzL2ZpeHB0MzFfMzI6IE1vdmUgdmFyaWFibGVzIHRvIHdoZXJl
IHRoZXkncmUKPiAgICAgdXNlZAo+ICAgZHJtL3JhZGVvbi9yYWRlb25fZHJ2OiBNb3ZlIHByb3Rv
dHlwZXMgdG8gYSBzaGFyZWQgaGVhZGVyZmlsZQo+ICAgZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rl
dmljZTogUHJvdmlkZSBkb2N1bWVudGF0aW9uIGZvciAncmVnX2FkZHInCj4gICAgIHBhcmFtcwo+
ICAgZHJtL3JhZGVvbjogTW92ZSBwcm90b3R5cGVzIHRvIHNoYXJlZCBoZWFkZXIKPiAgIGRybS9h
bWQvYW1kZ3B1L2FtZGdwdV9rbXM6IFJlbW92ZSAnc3RydWN0IGRybV9hbWRncHVfaW5mb19kZXZp
Y2UKPiAgICAgZGV2X2luZm8nIGZyb20gdGhlIHN0YWNrCj4gICBkcm0vcmFkZW9uL3JhZGVvbl9r
bXM6IEZpeCBtaXNuYW1pbmcgb2YgJ3JhZGVvbl9pbmZvX2lvY3RsJ3MgZGV2IHBhcmFtCj4gICBk
cm0vcmFkZW9uL2F0b21iaW9zX2NydGM6IFJlbW92ZSBkZXNjcmlwdGlvbiBvZiBub24tZXhpc3Rl
bnQgZnVuY3Rpb24KPiAgICAgcGFyYW0gJ2VuY29kZXInCj4gICBkcm0vdjNkL3YzZF9kcnY6IFJl
bW92ZSB1bnVzZWQgc3RhdGljIHZhcmlhYmxlICd2M2RfdjNkX3BtX29wcycKCkkgaGF2ZSBhcHBs
aWVkIHRoZSB0aHJlZSBwYXRjaGVzIHRoYXQgaGFzIG5vIG9idmlvdXMgbWFpbnRhaW5lciBhcyBp
bmRpY2F0ZWQKYWJvdmUuIEkgYXNzdW1lIHRoZSByZXNwZWN0aXZlIG1haW50YWluZXMgdG8gcGlj
ayByYWRlb24sIG9tYXBkcm0sIHR0bSwKYW1kLCB2M2QgYW5kIHNlbGZ0ZXN0IHBhdGNoZXMuCgoJ
U2FtCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRw
czovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
