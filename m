Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 48EA31BEF57
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Apr 2020 06:38:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6694F619CE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Apr 2020 04:38:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5763B619D6; Thu, 30 Apr 2020 04:38:05 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6E399619CF;
	Thu, 30 Apr 2020 04:37:32 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 86CB660BD9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Apr 2020 04:37:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6B09C619CF; Thu, 30 Apr 2020 04:37:30 +0000 (UTC)
Received: from asavdk3.altibox.net (asavdk3.altibox.net [109.247.116.14])
 by lists.linaro.org (Postfix) with ESMTPS id E08FE60BD9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Apr 2020 04:37:28 +0000 (UTC)
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 8A20620025;
 Thu, 30 Apr 2020 06:37:24 +0200 (CEST)
Date: Thu, 30 Apr 2020 06:37:23 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Vitor Massaru Iha <vitor@massaru.org>,
 Sumit Semwal <sumit.semwal@linaro.org>
Message-ID: <20200430043723.GA27272@ravnborg.org>
References: <20200430015930.32224-1-vitor@massaru.org>
 <cb4d93a0-b967-f37d-ea01-0368c91b896e@infradead.org>
 <0463c90cfbe2036235010c5f8b92af6a96c20f74.camel@massaru.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0463c90cfbe2036235010c5f8b92af6a96c20f74.camel@massaru.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=ULXz4hXy c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=kj9zAlcOel0A:10 a=DAf_8NmfAAAA:8 a=VwQbUJbxAAAA:8 a=JfrnYn6hAAAA:8
 a=NxUiqei-aeCDQRDTOOgA:9 a=CjuIK1q_8ugA:10 a=-sleECFk_mc0XVijyva9:22
 a=AjGcO6oz07-iQ99wixmX:22 a=1CNFftbPRP8L7MoqJWF3:22
 a=pHzHmUro8NiASowvMSCR:22 a=Ew2E2A-JSTLzCXPT_086:22
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Randy Dunlap <rdunlap@infradead.org>, brendanhiggins@google.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, skhan@linuxfoundation.org,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: Documentation: fix: `make
	htmldocs` warnings
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

T24gV2VkLCBBcHIgMjksIDIwMjAgYXQgMTE6Mjc6MjJQTSAtMDMwMCwgVml0b3IgTWFzc2FydSBJ
aGEgd3JvdGU6Cj4gT24gV2VkLCAyMDIwLTA0LTI5IGF0IDE5OjA2IC0wNzAwLCBSYW5keSBEdW5s
YXAgd3JvdGU6Cj4gPiBPbiA0LzI5LzIwIDY6NTkgUE0sIFZpdG9yIE1hc3NhcnUgSWhhIHdyb3Rl
Ogo+ID4gPiBBZGQgbWlzc2VkICI6IiBvbiBrZXJuZWwtZG9jIGZ1bmN0aW9uIHBhcmFtZXRlci4K
PiA+ID4gCj4gPiA+IFRoaXMgcGF0Y2ggZml4ZXMgdGhpcyB3YXJuaW5ncyBmcm9tIGBtYWtlIGh0
bWxkb2NzYDoKPiA+ID4gLi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jOjY3ODogd2FybmluZzog
RnVuY3Rpb24gcGFyYW1ldGVyIG9yCj4gPiA+IG1lbWJlciAnaW1wb3J0ZXJfb3BzJyBub3QgZGVz
Y3JpYmVkIGluICdkbWFfYnVmX2R5bmFtaWNfYXR0YWNoJwo+ID4gPiAuL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtYnVmLmM6Njc4OiB3YXJuaW5nOiBGdW5jdGlvbiBwYXJhbWV0ZXIgb3IKPiA+ID4gbWVt
YmVyICdpbXBvcnRlcl9wcml2JyBub3QgZGVzY3JpYmVkIGluICdkbWFfYnVmX2R5bmFtaWNfYXR0
YWNoJwo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogVml0b3IgTWFzc2FydSBJaGEgPHZpdG9y
QG1hc3NhcnUub3JnPgo+ID4gPiAtLS0KPiA+ID4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMg
fCA0ICsrLS0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYu
YyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPiA+ID4gaW5kZXggY2NjOWVkYTFiYzI4Li4w
NzU2ZDIxNTU3NDUgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMK
PiA+ID4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+ID4gPiBAQCAtNjU1LDggKzY1
NSw4IEBAIEVYUE9SVF9TWU1CT0xfR1BMKGRtYV9idWZfcHV0KTsKPiA+ID4gICAqIGNhbGxzIGF0
dGFjaCgpIG9mIGRtYV9idWZfb3BzIHRvIGFsbG93IGRldmljZS1zcGVjaWZpYyBhdHRhY2gKPiA+
ID4gZnVuY3Rpb25hbGl0eQo+ID4gPiAgICogQGRtYWJ1ZjoJCVtpbl0JYnVmZmVyIHRvIGF0dGFj
aCBkZXZpY2UgdG8uCj4gPiA+ICAgKiBAZGV2OgkJW2luXQlkZXZpY2UgdG8gYmUgYXR0YWNoZWQu
Cj4gPiA+IC0gKiBAaW1wb3J0ZXJfb3BzCVtpbl0JaW1wb3J0ZXIgb3BlcmF0aW9ucyBmb3IgdGhl
Cj4gPiA+IGF0dGFjaG1lbnQKPiA+ID4gLSAqIEBpbXBvcnRlcl9wcml2CVtpbl0JaW1wb3J0ZXIg
cHJpdmF0ZSBwb2ludGVyIGZvciB0aGUKPiA+ID4gYXR0YWNobWVudAo+ID4gPiArICogQGltcG9y
dGVyX29wczoJW2luXQlpbXBvcnRlciBvcGVyYXRpb25zIGZvciB0aGUKPiA+ID4gYXR0YWNobWVu
dAo+ID4gPiArICogQGltcG9ydGVyX3ByaXY6CVtpbl0JaW1wb3J0ZXIgcHJpdmF0ZSBwb2ludGVy
IGZvciB0aGUKPiA+ID4gYXR0YWNobWVudAo+ID4gPiAgICoKPiA+ID4gICAqIFJldHVybnMgc3Ry
dWN0IGRtYV9idWZfYXR0YWNobWVudCBwb2ludGVyIGZvciB0aGlzIGF0dGFjaG1lbnQuCj4gPiA+
IEF0dGFjaG1lbnRzCj4gPiA+ICAgKiBtdXN0IGJlIGNsZWFuZWQgdXAgYnkgY2FsbGluZyBkbWFf
YnVmX2RldGFjaCgpLgo+ID4gPiAKPiA+IAo+ID4gU3VtaXQgc2FpZCB0aGF0IGhlIHdvdWxkIGJl
IGFwcGx5aW5nIG15IHBhdGNoIGZyb20gQXByaWwgNzoKPiA+IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2xpbnV4LW1lZGlhLzdiY2JlNmZlLTBiNGItODdkYS1kMDAzLWI2OGEyNmViNGNmMEBpbmZy
YWRlYWQub3JnLwo+ID4gCj4gPiB0aGFua3MuCj4gCj4gU29ycnkuIEkgZGlkbid0IGNoZWNrIGlm
IHRoZSBwYXRjaCBoYXMgYWxyZWFkeSBiZWVuIHNlbnQuCgpTdW1pdCAtIHBhdGNoIGZyb20gUmFu
ZHkgaXMgbmVpdGhlciBhcHBsaWVkIHRvIGRybS1taXNjLW5leHQgbm9yCmRybS1taXNjLWZpeGVz
LgpBIHJlbWluZGVyIGluIGNhc2UgaXQgd2FzIGxvc3Qgc29tZXdoZXJlLgoKCVNhbQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5s
aW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
