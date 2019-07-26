Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE8076745
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Jul 2019 15:24:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 030B360EA0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Jul 2019 13:24:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EC36F60EDE; Fri, 26 Jul 2019 13:24:02 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B04B760E9A;
	Fri, 26 Jul 2019 13:23:29 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CA4C16091D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 26 Jul 2019 13:23:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BD92960E9A; Fri, 26 Jul 2019 13:23:24 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id A65A36091D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 26 Jul 2019 13:23:23 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6880722ADA;
 Fri, 26 Jul 2019 13:23:22 +0000 (UTC)
To: 20181206161840.6578-1-jglisse@redhat.com, christian.koenig@amd.com,
 daniel.vetter@ffwll.ch, dri-devel@lists.freedesktop.org,
 gregkh@linuxfoundation.org, jglisse@redhat.com, linaro-mm-sig@lists.linaro.org,
 marcheu@chromium.org, sumit.semwal@linaro.org
From: <gregkh@linuxfoundation.org>
Date: Fri, 26 Jul 2019 15:23:19 +0200
Message-ID: <156414739941229@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: stable-commits@vger.kernel.org
Subject: [Linaro-mm-sig] Patch "dma-buf: balance refcount inbalance" has
	been added to the 4.14-stable tree
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

ClRoaXMgaXMgYSBub3RlIHRvIGxldCB5b3Uga25vdyB0aGF0IEkndmUganVzdCBhZGRlZCB0aGUg
cGF0Y2ggdGl0bGVkCgogICAgZG1hLWJ1ZjogYmFsYW5jZSByZWZjb3VudCBpbmJhbGFuY2UKCnRv
IHRoZSA0LjE0LXN0YWJsZSB0cmVlIHdoaWNoIGNhbiBiZSBmb3VuZCBhdDoKICAgIGh0dHA6Ly93
d3cua2VybmVsLm9yZy9naXQvP3A9bGludXgva2VybmVsL2dpdC9zdGFibGUvc3RhYmxlLXF1ZXVl
LmdpdDthPXN1bW1hcnkKClRoZSBmaWxlbmFtZSBvZiB0aGUgcGF0Y2ggaXM6CiAgICAgZG1hLWJ1
Zi1iYWxhbmNlLXJlZmNvdW50LWluYmFsYW5jZS5wYXRjaAphbmQgaXQgY2FuIGJlIGZvdW5kIGlu
IHRoZSBxdWV1ZS00LjE0IHN1YmRpcmVjdG9yeS4KCklmIHlvdSwgb3IgYW55b25lIGVsc2UsIGZl
ZWxzIGl0IHNob3VsZCBub3QgYmUgYWRkZWQgdG8gdGhlIHN0YWJsZSB0cmVlLApwbGVhc2UgbGV0
IDxzdGFibGVAdmdlci5rZXJuZWwub3JnPiBrbm93IGFib3V0IGl0LgoKCkZyb20gNWUzODNhOTc5
ODk5MGM2OWZjNzU5YTQ5MzBkZTIyNGJiNDk3ZTYyYyBNb24gU2VwIDE3IDAwOjAwOjAwIDIwMDEK
RnJvbTogPT9VVEYtOD9xP0o9QzM9QTlyPUMzPUI0bWU9MjBHbGlzc2U/PSA8amdsaXNzZUByZWRo
YXQuY29tPgpEYXRlOiBUaHUsIDYgRGVjIDIwMTggMTE6MTg6NDAgLTA1MDAKU3ViamVjdDogZG1h
LWJ1ZjogYmFsYW5jZSByZWZjb3VudCBpbmJhbGFuY2UKTUlNRS1WZXJzaW9uOiAxLjAKQ29udGVu
dC1UeXBlOiB0ZXh0L3BsYWluOyBjaGFyc2V0PVVURi04CkNvbnRlbnQtVHJhbnNmZXItRW5jb2Rp
bmc6IDhiaXQKCkZyb206IErDqXLDtG1lIEdsaXNzZSA8amdsaXNzZUByZWRoYXQuY29tPgoKY29t
bWl0IDVlMzgzYTk3OTg5OTBjNjlmYzc1OWE0OTMwZGUyMjRiYjQ5N2U2MmMgdXBzdHJlYW0uCgpU
aGUgZGVidWdmcyB0YWtlIHJlZmVyZW5jZSBvbiBmZW5jZSB3aXRob3V0IGRyb3BwaW5nIHRoZW0u
CgpTaWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBHbGlzc2UgPGpnbGlzc2VAcmVkaGF0LmNvbT4KQ2M6
IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KQ2M6IERhbmllbCBW
ZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+CkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNl
bXdhbEBsaW5hcm8ub3JnPgpDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCkNjOiBkcmkt
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKQ2M6IFN0w6lwaGFuZSBNYXJjaGVzaW4gPG1hcmNoZXVAY2hyb21pdW0ub3JnPgpDYzog
c3RhYmxlQHZnZXIua2VybmVsLm9yZwpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpTaWduZWQtb2ZmLWJ5OiBTdW1pdCBTZW13YWwgPHN1bWl0
LnNlbXdhbEBsaW5hcm8ub3JnPgpMaW5rOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5v
cmcvcGF0Y2gvbXNnaWQvMjAxODEyMDYxNjE4NDAuNjU3OC0xLWpnbGlzc2VAcmVkaGF0LmNvbQpT
aWduZWQtb2ZmLWJ5OiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24u
b3JnPgoKLS0tCiBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHwgICAgMSArCiAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKykKCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKKysr
IGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwpAQCAtMTExNSw2ICsxMTE1LDcgQEAgc3RhdGlj
IGludCBkbWFfYnVmX2RlYnVnX3Nob3coc3RydWN0IHNlcQogCQkJCSAgIGZlbmNlLT5vcHMtPmdl
dF9kcml2ZXJfbmFtZShmZW5jZSksCiAJCQkJICAgZmVuY2UtPm9wcy0+Z2V0X3RpbWVsaW5lX25h
bWUoZmVuY2UpLAogCQkJCSAgIGRtYV9mZW5jZV9pc19zaWduYWxlZChmZW5jZSkgPyAiIiA6ICJ1
biIpOworCQkJZG1hX2ZlbmNlX3B1dChmZW5jZSk7CiAJCX0KIAkJcmN1X3JlYWRfdW5sb2NrKCk7
CiAKCgpQYXRjaGVzIGN1cnJlbnRseSBpbiBzdGFibGUtcXVldWUgd2hpY2ggbWlnaHQgYmUgZnJv
bSBqZ2xpc3NlQHJlZGhhdC5jb20gYXJlCgpxdWV1ZS00LjE0L2RtYS1idWYtYmFsYW5jZS1yZWZj
b3VudC1pbmJhbGFuY2UucGF0Y2gKcXVldWUtNC4xNC9saWJudmRpbW0tcGZuLWZpeC1mc2RheC1t
b2RlLW5hbWVzcGFjZS1pbmZvLWJsb2NrLXplcm8tZmllbGRzLnBhdGNoCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
