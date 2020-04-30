Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB9A1BEE12
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Apr 2020 04:09:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 06020619CE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Apr 2020 02:09:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EB917619D0; Thu, 30 Apr 2020 02:09:58 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5AE4D619CF;
	Thu, 30 Apr 2020 02:09:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CC215619B0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Apr 2020 02:09:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B7D3D619CF; Thu, 30 Apr 2020 02:09:18 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id DE3EA619D6
 for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Apr 2020 02:07:11 +0000 (UTC)
Received: from [2601:1c0:6280:3f0::19c2]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTybJ-0007Az-Jf; Thu, 30 Apr 2020 02:06:57 +0000
To: Vitor Massaru Iha <vitor@massaru.org>, dri-devel@lists.freedesktop.org
References: <20200430015930.32224-1-vitor@massaru.org>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <cb4d93a0-b967-f37d-ea01-0368c91b896e@infradead.org>
Date: Wed, 29 Apr 2020 19:06:55 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200430015930.32224-1-vitor@massaru.org>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: brendanhiggins@google.com, linux-kernel@vger.kernel.org,
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

T24gNC8yOS8yMCA2OjU5IFBNLCBWaXRvciBNYXNzYXJ1IEloYSB3cm90ZToKPiBBZGQgbWlzc2Vk
ICI6IiBvbiBrZXJuZWwtZG9jIGZ1bmN0aW9uIHBhcmFtZXRlci4KPiAKPiBUaGlzIHBhdGNoIGZp
eGVzIHRoaXMgd2FybmluZ3MgZnJvbSBgbWFrZSBodG1sZG9jc2A6Cj4gLi9kcml2ZXJzL2RtYS1i
dWYvZG1hLWJ1Zi5jOjY3ODogd2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJlciAn
aW1wb3J0ZXJfb3BzJyBub3QgZGVzY3JpYmVkIGluICdkbWFfYnVmX2R5bmFtaWNfYXR0YWNoJwo+
IC4vZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYzo2Nzg6IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFt
ZXRlciBvciBtZW1iZXIgJ2ltcG9ydGVyX3ByaXYnIG5vdCBkZXNjcmliZWQgaW4gJ2RtYV9idWZf
ZHluYW1pY19hdHRhY2gnCj4gCj4gU2lnbmVkLW9mZi1ieTogVml0b3IgTWFzc2FydSBJaGEgPHZp
dG9yQG1hc3NhcnUub3JnPgo+IC0tLQo+ICBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHwgNCAr
Ky0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1i
dWYvZG1hLWJ1Zi5jCj4gaW5kZXggY2NjOWVkYTFiYzI4Li4wNzU2ZDIxNTU3NDUgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmMKPiBAQCAtNjU1LDggKzY1NSw4IEBAIEVYUE9SVF9TWU1CT0xfR1BMKGRtYV9idWZf
cHV0KTsKPiAgICogY2FsbHMgYXR0YWNoKCkgb2YgZG1hX2J1Zl9vcHMgdG8gYWxsb3cgZGV2aWNl
LXNwZWNpZmljIGF0dGFjaCBmdW5jdGlvbmFsaXR5Cj4gICAqIEBkbWFidWY6CQlbaW5dCWJ1ZmZl
ciB0byBhdHRhY2ggZGV2aWNlIHRvLgo+ICAgKiBAZGV2OgkJW2luXQlkZXZpY2UgdG8gYmUgYXR0
YWNoZWQuCj4gLSAqIEBpbXBvcnRlcl9vcHMJW2luXQlpbXBvcnRlciBvcGVyYXRpb25zIGZvciB0
aGUgYXR0YWNobWVudAo+IC0gKiBAaW1wb3J0ZXJfcHJpdglbaW5dCWltcG9ydGVyIHByaXZhdGUg
cG9pbnRlciBmb3IgdGhlIGF0dGFjaG1lbnQKPiArICogQGltcG9ydGVyX29wczoJW2luXQlpbXBv
cnRlciBvcGVyYXRpb25zIGZvciB0aGUgYXR0YWNobWVudAo+ICsgKiBAaW1wb3J0ZXJfcHJpdjoJ
W2luXQlpbXBvcnRlciBwcml2YXRlIHBvaW50ZXIgZm9yIHRoZSBhdHRhY2htZW50Cj4gICAqCj4g
ICAqIFJldHVybnMgc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCBwb2ludGVyIGZvciB0aGlzIGF0
dGFjaG1lbnQuIEF0dGFjaG1lbnRzCj4gICAqIG11c3QgYmUgY2xlYW5lZCB1cCBieSBjYWxsaW5n
IGRtYV9idWZfZGV0YWNoKCkuCj4gCgpTdW1pdCBzYWlkIHRoYXQgaGUgd291bGQgYmUgYXBwbHlp
bmcgbXkgcGF0Y2ggZnJvbSBBcHJpbCA3OgpodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1t
ZWRpYS83YmNiZTZmZS0wYjRiLTg3ZGEtZDAwMy1iNjhhMjZlYjRjZjBAaW5mcmFkZWFkLm9yZy8K
CnRoYW5rcy4KLS0gCn5SYW5keQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bmFyby1tbS1zaWcK
