Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 32BBD247E28
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 08:00:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4F69565F75
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 06:00:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3EC90617B9; Tue, 18 Aug 2020 06:00:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CB2F4617EF;
	Tue, 18 Aug 2020 06:00:09 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5E50760665
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 06:00:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4350B617EF; Tue, 18 Aug 2020 06:00:06 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by lists.linaro.org (Postfix) with ESMTPS id C2CEE60665
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 06:00:04 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-370-8UBKwuVyNTeLOGkX_s5Ztg-1; Tue, 18 Aug 2020 01:59:58 -0400
X-MC-Unique: 8UBKwuVyNTeLOGkX_s5Ztg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5760580732F;
 Tue, 18 Aug 2020 05:59:55 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-112-195.ams2.redhat.com
 [10.36.112.195])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C83E616597;
 Tue, 18 Aug 2020 05:59:50 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id C0B321753B; Tue, 18 Aug 2020 07:59:49 +0200 (CEST)
Date: Tue, 18 Aug 2020 07:59:49 +0200
From: Gerd Hoffmann <kraxel@redhat.com>
To: David Stevens <stevensd@chromium.org>
Message-ID: <20200818055949.6si4jzuubba5dx5u@sirius.home.kraxel.org>
References: <20200818013744.3327271-1-stevensd@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200818013744.3327271-1-stevensd@chromium.org>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: virtio-dev@lists.oasis-open.org, Thomas Zimmermann <tzimmermann@suse.de>,
 "Michael S . Tsirkin" <mst@redhat.com>, David Airlie <airlied@linux.ie>,
 Jason Wang <jasowang@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 virtualization@lists.linux-foundation.org, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH v6 0/3] Support virtio cross-device
	resources
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

T24gVHVlLCBBdWcgMTgsIDIwMjAgYXQgMTA6Mzc6NDFBTSArMDkwMCwgRGF2aWQgU3RldmVucyB3
cm90ZToKPiBUaGlzIHBhdGNoc2V0IGltcGxlbWVudHMgdGhlIGN1cnJlbnQgcHJvcG9zYWwgZm9y
IHZpcnRpbyBjcm9zcy1kZXZpY2UKPiByZXNvdXJjZSBzaGFyaW5nIFsxXS4gSXQgd2lsbCBiZSB1
c2VkIHRvIGltcG9ydCB2aXJ0aW8gcmVzb3VyY2VzIGludG8KPiB0aGUgdmlydGlvLXZpZGVvIGRy
aXZlciBjdXJyZW50bHkgdW5kZXIgZGlzY3Vzc2lvbiBbMl0uIFRoZSBwYXRjaAo+IHVuZGVyIGNv
bnNpZGVyYXRpb24gdG8gYWRkIHN1cHBvcnQgaW4gdGhlIHZpcnRpby12aWRlbyBkcml2ZXIgaXMg
WzNdLgo+IEl0IHVzZXMgdGhlIEFQSXMgZnJvbSB2MyBvZiB0aGlzIHNlcmllcywgYnV0IHRoZSBj
aGFuZ2VzIHRvIHVwZGF0ZSBpdAo+IGFyZSByZWxhdGl2ZWx5IG1pbm9yLgo+IAo+IFRoaXMgcGF0
Y2hzZXQgYWRkcyBhIG5ldyBmbGF2b3Igb2YgZG1hLWJ1ZnMgdGhhdCBzdXBwb3J0cyBxdWVyeWlu
ZyB0aGUKPiB1bmRlcmx5aW5nIHZpcnRpbyBvYmplY3QgVVVJRCwgYXMgd2VsbCBhcyBhZGRpbmcg
c3VwcG9ydCBmb3IgZXhwb3J0aW5nCj4gcmVzb3VyY2VzIGZyb20gdmlydGdwdS4KPiAKPiBbMV0g
aHR0cHM6Ly9tYXJrbWFpbC5vcmcvdGhyZWFkLzJ5cGp0NWNmZXUzbTZseHUKPiBbMl0gaHR0cHM6
Ly9tYXJrbWFpbC5vcmcvdGhyZWFkL3A1ZDNrNTY2c3J0ZHR1dGUKPiBbM10gaHR0cHM6Ly9tYXJr
bWFpbC5vcmcvdGhyZWFkL2o0eGxxYWFpbTI2NnFwa3MKPiAKPiB2NSAtPiB2NiBjaGFuZ2VzOgo+
ICAtIEZpeCA+ODAgY2hhcmFjdGVyIGNvbW1lbnQKCkhtbSwgY2hlY2twYXRjaCBzdGlsbCBjb21w
bGFpbnMsIGZ1bGwgbG9nIGJlbG93LgoKSUlSQyAiZGltIGNoZWNrcGF0Y2giIHJ1bnMgc2NyaXB0
cy9jaGVja3BhdGNoLnBsIHdpdGggLS1zdHJpY3QKc28gaXQgaXMgYSBiaXQgbW9yZSBwaWNreSAu
Li4KClRoZSBGSUxFX1BBVEhfQ0hBTkdFUyBpc24ndCBhIHByb2JsZW0gZ2l2ZW4gdGhhdCB0aGUg
bmV3IGZpbGUKaXMgY292ZXJlZCBieSBleGlzdGluZyB3aWxkY2FyZC4KCnRha2UgY2FyZSwKICBH
ZXJkCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KKyBkaW0gY2hlY2twYXRjaCBkcm0tbWlzYy1uZXh0Li5kcm0tcWVtdS1uZXh0
IGRybS1taXNjCmVlMTk0ZGMyMjJhZSB2aXJ0aW86IGFkZCBkbWEtYnVmIHN1cHBvcnQgZm9yIGV4
cG9ydGVkIG9iamVjdHMKLToyOTogV0FSTklORzpGSUxFX1BBVEhfQ0hBTkdFUzogYWRkZWQsIG1v
dmVkIG9yIGRlbGV0ZWQgZmlsZShzKSwgZG9lcyBNQUlOVEFJTkVSUyBuZWVkIHVwZGF0aW5nPwoj
Mjk6IApuZXcgZmlsZSBtb2RlIDEwMDY0NAoKLTo2NTogQ0hFQ0s6T1BFTl9FTkRFRF9MSU5FOiBM
aW5lcyBzaG91bGQgbm90IGVuZCB3aXRoIGEgJygnCiM2NTogRklMRTogaW5jbHVkZS9saW51eC92
aXJ0aW9fZG1hX2J1Zi5oOjMyOgorc3RydWN0IGRtYV9idWYgKnZpcnRpb19kbWFfYnVmX2V4cG9y
dCgKCi06MTEyOiBDSEVDSzpPUEVOX0VOREVEX0xJTkU6IExpbmVzIHNob3VsZCBub3QgZW5kIHdp
dGggYSAnKCcKIzExMjogRklMRTogZHJpdmVycy92aXJ0aW8vdmlydGlvX2RtYV9idWYuYzoxOToK
K3N0cnVjdCBkbWFfYnVmICp2aXJ0aW9fZG1hX2J1Zl9leHBvcnQoCgotOjExNTogQ0hFQ0s6T1BF
Tl9FTkRFRF9MSU5FOiBMaW5lcyBzaG91bGQgbm90IGVuZCB3aXRoIGEgJygnCiMxMTU6IEZJTEU6
IGRyaXZlcnMvdmlydGlvL3ZpcnRpb19kbWFfYnVmLmM6MjI6CisJY29uc3Qgc3RydWN0IHZpcnRp
b19kbWFfYnVmX29wcyAqdmlydGlvX29wcyA9IGNvbnRhaW5lcl9vZigKCi06MTE5OiBDSEVDSzpM
T0dJQ0FMX0NPTlRJTlVBVElPTlM6IExvZ2ljYWwgY29udGludWF0aW9ucyBzaG91bGQgYmUgb24g
dGhlIHByZXZpb3VzIGxpbmUKIzExOTogRklMRTogZHJpdmVycy92aXJ0aW8vdmlydGlvX2RtYV9i
dWYuYzoyNjoKKwlpZiAoIWV4cF9pbmZvLT5vcHMKKwkJfHwgZXhwX2luZm8tPm9wcy0+YXR0YWNo
ICE9ICZ2aXJ0aW9fZG1hX2J1Zl9hdHRhY2gKCi06MTIwOiBDSEVDSzpMT0dJQ0FMX0NPTlRJTlVB
VElPTlM6IExvZ2ljYWwgY29udGludWF0aW9ucyBzaG91bGQgYmUgb24gdGhlIHByZXZpb3VzIGxp
bmUKIzEyMDogRklMRTogZHJpdmVycy92aXJ0aW8vdmlydGlvX2RtYV9idWYuYzoyNzoKKwkJfHwg
ZXhwX2luZm8tPm9wcy0+YXR0YWNoICE9ICZ2aXJ0aW9fZG1hX2J1Zl9hdHRhY2gKKwkJfHwgIXZp
cnRpb19vcHMtPmdldF91dWlkKSB7CgotOjEzNTogQ0hFQ0s6T1BFTl9FTkRFRF9MSU5FOiBMaW5l
cyBzaG91bGQgbm90IGVuZCB3aXRoIGEgJygnCiMxMzU6IEZJTEU6IGRyaXZlcnMvdmlydGlvL3Zp
cnRpb19kbWFfYnVmLmM6NDI6CisJY29uc3Qgc3RydWN0IHZpcnRpb19kbWFfYnVmX29wcyAqb3Bz
ID0gY29udGFpbmVyX29mKAoKLToxNjc6IENIRUNLOk9QRU5fRU5ERURfTElORTogTGluZXMgc2hv
dWxkIG5vdCBlbmQgd2l0aCBhICcoJwojMTY3OiBGSUxFOiBkcml2ZXJzL3ZpcnRpby92aXJ0aW9f
ZG1hX2J1Zi5jOjc0OgorCWNvbnN0IHN0cnVjdCB2aXJ0aW9fZG1hX2J1Zl9vcHMgKm9wcyA9IGNv
bnRhaW5lcl9vZigKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgNyBjaGVja3MsIDE0NCBs
aW5lcyBjaGVja2VkCjc2YzljMmFiYmU2YiB2aXJ0aW8tZ3B1OiBhZGQgVklSVElPX0dQVV9GX1JF
U09VUkNFX1VVSUQgZmVhdHVyZQo5YzNmM2VkZDFjYzQgKEhFQUQgLT4gZHJtLXFlbXUtbmV4dCwg
a3JheGVsLm9yZy9kcm0tcWVtdS1uZXh0KSBkcm0vdmlydGlvOiBTdXBwb3J0IHZpcnRncHUgZXhw
b3J0ZWQgcmVzb3VyY2VzCi06NTM6IENIRUNLOlVOQ09NTUVOVEVEX0RFRklOSVRJT046IHNwaW5s
b2NrX3QgZGVmaW5pdGlvbiB3aXRob3V0IGNvbW1lbnQKIzUzOiBGSUxFOiBkcml2ZXJzL2dwdS9k
cm0vdmlydGlvL3ZpcnRncHVfZHJ2Lmg6MjIyOgorCXNwaW5sb2NrX3QgcmVzb3VyY2VfZXhwb3J0
X2xvY2s7CgotOjI1MDogQ0hFQ0s6UFJFRkVSX0tFUk5FTF9UWVBFUzogUHJlZmVyIGtlcm5lbCB0
eXBlICd1MzInIG92ZXIgJ3VpbnQzMl90JwojMjUwOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vdmly
dGlvL3ZpcnRncHVfdnEuYzoxMTE4OgorCXVpbnQzMl90IHJlc3BfdHlwZSA9IGxlMzJfdG9fY3B1
KHJlc3AtPmhkci50eXBlKTsKCi06MjU2OiBDSEVDSzpQQVJFTlRIRVNJU19BTElHTk1FTlQ6IEFs
aWdubWVudCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwojMjU2OiBGSUxFOiBkcml2ZXJz
L2dwdS9kcm0vdmlydGlvL3ZpcnRncHVfdnEuYzoxMTI0OgorCWlmIChyZXNwX3R5cGUgPT0gVklS
VElPX0dQVV9SRVNQX09LX1JFU09VUkNFX1VVSUQgJiYKKwkJCW9iai0+dXVpZF9zdGF0ZSA9PSBV
VUlEX0lOSVRJQUxJWklORykgewoKLToyODY6IENIRUNLOlBBUkVOVEhFU0lTX0FMSUdOTUVOVDog
QWxpZ25tZW50IHNob3VsZCBtYXRjaCBvcGVuIHBhcmVudGhlc2lzCiMyODY6IEZJTEU6IGRyaXZl
cnMvZ3B1L2RybS92aXJ0aW8vdmlydGdwdV92cS5jOjExNTQ6CisJY21kX3AgPSB2aXJ0aW9fZ3B1
X2FsbG9jX2NtZF9yZXNwKHZnZGV2LAorCQl2aXJ0aW9fZ3B1X2NtZF9yZXNvdXJjZV91dWlkX2Ni
LCAmdmJ1Ziwgc2l6ZW9mKCpjbWRfcCksCgp0b3RhbDogMCBlcnJvcnMsIDAgd2FybmluZ3MsIDQg
Y2hlY2tzLCAyNTAgbGluZXMgY2hlY2tlZAorIGV4aXQgMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
