Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 512D61BD34
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 May 2019 20:34:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0A2A160649
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 May 2019 18:34:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EDDCC60654; Mon, 13 May 2019 18:34:36 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CED656063C;
	Mon, 13 May 2019 18:33:41 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 850FB60724
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 May 2019 16:31:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9B30862408; Thu,  9 May 2019 11:46:16 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id 6C38362402
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 May 2019 11:46:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16501956-1500050 for multiple; Thu, 09 May 2019 12:46:08 +0100
MIME-Version: 1.0
To: Michael Yang <michael.yang@imgtec.com>, sumit.semwal@linaro.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <1557376451-20164-1-git-send-email-michael.yang@imgtec.com>
References: <1554710495-6646-1-git-send-email-michael.yang@imgtec.com>
 <1557376451-20164-1-git-send-email-michael.yang@imgtec.com>
Message-ID: <155740236592.28545.17880521046408313036@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 09 May 2019 12:46:05 +0100
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: gustavo@padovan.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 gregkh@linuxfoundation.org, michael.yang@imgtec.com,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] sync_file: Return reasonable timestamp
 when merging signaled fences
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

UXVvdGluZyBNaWNoYWVsIFlhbmcgKDIwMTktMDUtMDkgMDU6MzQ6MTEpCj4gSWYgYWxsIHRoZSBz
eW5jIHBvaW50cyB3ZXJlIHNpZ25hbGVkIGluIGJvdGggZmVuY2VzIGEgYW5kIGIsCj4gdGhlcmUg
d2FzIG9ubHkgb25lIHN5bmMgcG9pbnQgaW4gbWVyZ2VkIGZlbmNlIHdoaWNoIGlzIGFfZmVuY2Vb
MF0uCj4gVGhlIEZlbmNlIHN0cnVjdHVyZSBpbiBhbmRyb2lkIGZyYW1ld29yayBtaWdodCBiZSBj
b25mdXNlZCBhYm91dAo+IHRpbWVzdGFtcCBpZiB0aGVyZSB3ZXJlIGFueSBzeW5jIHBvaW50cyB3
aGljaCB3ZXJlIHNpZ25hbGVkIGFmdGVyCj4gYV9mZW5jZVswXS4gSXQgbWlnaHQgYmUgbW9yZSBy
ZWFzb25hYmxlIHRvIHVzZSB0aW1lc3RhbXAgb2YgbGFzdCBzaWduYWxlZAo+IHN5bmMgcG9pbnQg
dG8gcmVwcmVzZW50IHRoZSBtZXJnZWQgZmVuY2UuCj4gVGhlIGlzc3VlIGNhbiBiZSBmb3VuZCBm
cm9tIEVHTCBleHRlbnNpb24gQU5EUk9JRF9nZXRfZnJhbWVfdGltZXN0YW1wcy4KPiBTb21ldGlt
ZXMgdGhlIHJldHVybiB2YWx1ZSBvZiBFR0xfUkVBRFNfRE9ORV9USU1FX0FORFJPSUQgaXMgaGVh
ZCBvZgo+IHRoZSByZXR1cm4gdmFsdWUgb2YgRUdMX1JFTkRFUklOR19DT01QTEVURV9USU1FX0FO
RFJPSUQuCj4gVGhhdCBtZWFucyBkaXNwbGF5L2NvbXBvc2l0aW9uIGhhZCBiZWVuIGNvbXBsZXRl
ZCBiZWZvcmUgcmVuZGVyaW5nCj4gd2FzIGNvbXBsZXRlZCB0aGF0IGlzIGluY29ycmVjdC4KPiAK
PiBTb21lIGRpc2N1c3Npb24gY2FuIGJlIGZvdW5kIGF0Ogo+IGh0dHBzOi8vYW5kcm9pZC1yZXZp
ZXcuZ29vZ2xlc291cmNlLmNvbS9jL2tlcm5lbC9jb21tb24vKy85MDcwMDkKPiAKPiBTaWduZWQt
b2ZmLWJ5OiBNaWNoYWVsIFlhbmcgPG1pY2hhZWwueWFuZ0BpbWd0ZWMuY29tPgo+IC0tLQo+IEhp
LAo+IEkgZGlkbid0IGdldCByZXNwb25zZSBzaW5jZSBJIHByZXZpb3VzbHkgc2VudCB0aGlzIGEg
bW9udGggYWdvLgo+IENvdWxkIHNvbWVvbmUgaGF2ZSBhIGNoYW5jZSB0byBsb29rIGF0IGl0IHBs
ZWFzZT8KPiBUaGFua3MuCj4gIGRyaXZlcnMvZG1hLWJ1Zi9zeW5jX2ZpbGUuYyB8IDI1ICsrKysr
KysrKysrKysrKysrKysrKysrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2Zp
bGUuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2ZpbGUuYwo+IGluZGV4IDRmNjMwNWMuLmQ0NmJm
ZTEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL3N5bmNfZmlsZS5jCj4gKysrIGIvZHJp
dmVycy9kbWEtYnVmL3N5bmNfZmlsZS5jCj4gQEAgLTI3NCw4ICsyNzQsMjkgQEAgc3RhdGljIHN0
cnVjdCBzeW5jX2ZpbGUgKnN5bmNfZmlsZV9tZXJnZShjb25zdCBjaGFyICpuYW1lLCBzdHJ1Y3Qg
c3luY19maWxlICphLAo+ICAgICAgICAgZm9yICg7IGlfYiA8IGJfbnVtX2ZlbmNlczsgaV9iKysp
Cj4gICAgICAgICAgICAgICAgIGFkZF9mZW5jZShmZW5jZXMsICZpLCBiX2ZlbmNlc1tpX2JdKTsK
PiAgCj4gLSAgICAgICBpZiAoaSA9PSAwKQo+IC0gICAgICAgICAgICAgICBmZW5jZXNbaSsrXSA9
IGRtYV9mZW5jZV9nZXQoYV9mZW5jZXNbMF0pOwo+ICsgICAgICAgLyogSWYgYWxsIHRoZSBzeW5j
IHB0cyB3ZXJlIHNpZ25hbGVkLCB0aGVuIGFkZGluZyB0aGUgc3luY19wdCB3aG8KPiArICAgICAg
ICAqIHdhcyB0aGUgbGFzdCBzaWduYWxlZCB0byB0aGUgZmVuY2UuCj4gKyAgICAgICAgKi8KPiAr
ICAgICAgIGlmIChpID09IDApIHsKPiArICAgICAgICAgICAgICAgc3RydWN0IGRtYV9mZW5jZSAq
bGFzdF9zaWduYWxlZF9zeW5jX3B0ID0gYV9mZW5jZXNbMF07Cj4gKyAgICAgICAgICAgICAgIGlu
dCBpdGVyOwo+ICsKPiArICAgICAgICAgICAgICAgZm9yIChpdGVyID0gMTsgaXRlciA8IGFfbnVt
X2ZlbmNlczsgaXRlcisrKSB7CgpJZiB0aGVyZSBpcyBtb3JlIHRoYW4gb25lIGZlbmNlLCBzeW5j
X2ZpbGUtPmZlbmNlIGlzIGEgZmVuY2VfYXJyYXkgYW5kCml0cyB0aW1lc3RhbXAgaXMgd2hhdCB5
b3Ugd2FudC4gSWYgdGhlcmUgaXMgb25lIGZlbmNlLCBzeW5jX2ZpbGUtPmZlbmNlCmlzIGEgcG9p
bnRlciB0byB0aGF0IGZlbmNlLCBhbmQgbmF0dXJhbGx5IGhhcyB0aGUgcmlnaHQgdGltZXN0YW1w
LgoKSW4gc2hvcnQsIHRoaXMgc2hvdWxkIGJlIGhhbmRsZWQgYnkgZG1hX2ZlbmNlX2FycmF5X2Ny
ZWF0ZSgpIHdoZW4gZ2l2ZW4KYSBjb21wbGV0ZSBzZXQgb2Ygc2lnbmFsZWQgZmVuY2VzLCBpdCB0
b28gc2hvdWxkIGluaGVyaXQgdGhlIHNpZ25hbGVkCnN0YXR1cyB3aXRoIHRoZSB0aW1lc3RhbXAg
YmVpbmcgdGFrZW4gZnJvbSB0aGUgbGFzdCBmZW5jZS4gSXQgc2hvdWxkCmFsc28gYmUgY2FyZWZ1
bCB0byBpbmhlcml0IHRoZSBlcnJvciBzdGF0dXMuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApM
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21h
aWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
