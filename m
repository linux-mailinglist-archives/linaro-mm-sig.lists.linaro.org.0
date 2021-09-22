Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EC54B4148B7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 14:22:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EE5B9619D7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 12:22:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7193F61976; Wed, 22 Sep 2021 12:22:30 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 39D1861731;
	Wed, 22 Sep 2021 12:22:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7F97C6117A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 12:22:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 706CF61731; Wed, 22 Sep 2021 12:22:25 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by lists.linaro.org (Postfix) with ESMTPS id 693316117A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 12:22:23 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id w29so6155085wra.8
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 05:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=tSWNs0kGk+q1W6LT/3/0miI8jhwfdPFbV97Eh9vLDtQ=;
 b=J9LsT9+8y4ExWJHzDm+gWvpo+L3XRzkV7sOeoq1T1A8D/YpSJ+N8gcyijgX7AusvLY
 K6FsChREpMewAJ+fBEkNTBHnHVapNzpbQFKq9oF/4pqiy6R6B0PKOOBplyZ9CxBQ3xgT
 Jvqkp8rjan12DBW1WBxv54RTl/t/x/5CNY0T6PJcc/GtVn7cvEv7plY41bKgQlYiEQqS
 mdem95RYC5De+2TQ35pZWtWR8rehjX8fzo3j6OLDUufxjvu7WB5wYVz7lsUPRxiwfDMc
 AH3r0ZOoiRwyYqw7EDOO7+cUtkmFEIuWczEVL/NluQll5KO7rShD3+1GeJtcNubURZAW
 Ivcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=tSWNs0kGk+q1W6LT/3/0miI8jhwfdPFbV97Eh9vLDtQ=;
 b=3l9xVYhheQmJJorCKpbGvOegMktDT8Ezy5KF1RN4vWTUdX1qTUIw58oeTVRFWvmO2J
 KeKDVtYfaX5bMNgZ7raDYy73aW3ChUsQar6rrmIGKTuKR7zCVuD322Kpp0tCwzunZX7Y
 tLpqn2OOnTp80Xw+x2i1sSevNtKFv70LkupdMmZnpU8PMHD9NDzXSz3Fni2o+gkh9xbr
 0jvYI8XlfCVQItFXmUZ+vLUHzedJsVjJSnzpYMUGDcwAf11fvhVk1HaYbch7nwI0NeMe
 bPleNssLQeuEOopG1rDmsUV1lPnQQ4SfHCCYB7DA4VVrHrgByjog2AqgYjgxuuuy/ulc
 +qZQ==
X-Gm-Message-State: AOAM533RDoyGNEB1lxMmZLWPRJtteVv7nZ8KD6ZaUmUdIN4vviKzZ9JY
 c/MqagOUCZ8iKCqdyfQOqXY=
X-Google-Smtp-Source: ABdhPJx6gbuuQAUhFbxl0ifV15VDHIHbwi/lV3H5yS5QKqeV8MD66+nObdjL7UN+ymWT5LVzZfaKPw==
X-Received: by 2002:adf:ec4b:: with SMTP id w11mr41369389wrn.389.1632313342446; 
 Wed, 22 Sep 2021 05:22:22 -0700 (PDT)
Received: from [192.168.178.21] (p5b0ea1b5.dip0.t-ipconnect.de.
 [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id u13sm1738575wmq.33.2021.09.22.05.22.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Sep 2021 05:22:21 -0700 (PDT)
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20210922091044.2612-1-christian.koenig@amd.com>
 <20210922091044.2612-14-christian.koenig@amd.com>
 <6b22cb75-6c41-db55-83f2-3eae87b585aa@linux.intel.com>
 <4c357136-3279-ff57-1c4f-62276534c887@linux.intel.com>
 <acc297ce-287e-295c-8b54-223610fb2093@gmail.com>
 <6f8140bd-9cff-e0d8-e014-b3fb8d2d8ab0@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <7e03d687-4381-5263-4f03-a34f16ce8f1c@gmail.com>
Date: Wed, 22 Sep 2021 14:22:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <6f8140bd-9cff-e0d8-e014-b3fb8d2d8ab0@linux.intel.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 13/26] drm/i915: use the new iterator in
 i915_gem_busy_ioctl
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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
Cc: daniel@ffwll.ch
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjIuMDkuMjEgdW0gMTQ6MjAgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoKPgo+IE9uIDIyLzA5
LzIwMjEgMTM6MTUsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+IEFtIDIyLjA5LjIxIHVtIDEz
OjQ2IHNjaHJpZWIgVHZydGtvIFVyc3VsaW46Cj4+Pgo+Pj4gT24gMjIvMDkvMjAyMSAxMToyMSwg
VHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4+Pj4KPj4+PiBPbiAyMi8wOS8yMDIxIDEwOjEwLCBDaHJp
c3RpYW4gS8O2bmlnIHdyb3RlOgo+Pj4+PiBUaGlzIG1ha2VzIHRoZSBmdW5jdGlvbiBtdWNoIHNp
bXBsZXIgc2luY2UgdGhlIGNvbXBsZXgKPj4+Pj4gcmV0cnkgbG9naWMgaXMgbm93IGhhbmRsZWQg
ZWxzZSB3aGVyZS4KPj4+Pj4KPj4+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+Pj4+PiAtLS0KPj4+Pj4gwqAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYyB8IDM1IAo+Pj4+PiArKysrKysrKysrLS0tLS0t
LS0tLS0tLS0KPj4+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDIxIGRl
bGV0aW9ucygtKQo+Pj4+Pgo+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2J1c3kuYyAKPj4+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fYnVzeS5jCj4+Pj4+IGluZGV4IDYyMzRlMTcyNTljMS4uMzEzYWZiNGExMWM3IDEwMDY0
NAo+Pj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fYnVzeS5jCj4+
Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9idXN5LmMKPj4+Pj4g
QEAgLTgyLDggKzgyLDggQEAgaTkxNV9nZW1fYnVzeV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2LCB2b2lkIAo+Pj4+PiAqZGF0YSwKPj4+Pj4gwqAgewo+Pj4+PiDCoMKgwqDCoMKgIHN0cnVj
dCBkcm1faTkxNV9nZW1fYnVzeSAqYXJncyA9IGRhdGE7Cj4+Pj4+IMKgwqDCoMKgwqAgc3RydWN0
IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKPj4+Pj4gLcKgwqDCoCBzdHJ1Y3QgZG1hX3Jlc3Zf
bGlzdCAqbGlzdDsKPj4+Pj4gLcKgwqDCoCB1bnNpZ25lZCBpbnQgc2VxOwo+Pj4+PiArwqDCoMKg
IHN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNvcjsKPj4+Pj4gK8KgwqDCoCBzdHJ1Y3QgZG1hX2Zl
bmNlICpmZW5jZTsKPj4+Pj4gwqDCoMKgwqDCoCBpbnQgZXJyOwo+Pj4+PiDCoMKgwqDCoMKgIGVy
ciA9IC1FTk9FTlQ7Cj4+Pj4+IEBAIC0xMDksMjcgKzEwOSwyMCBAQCBpOTE1X2dlbV9idXN5X2lv
Y3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIAo+Pj4+PiB2b2lkICpkYXRhLAo+Pj4+PiDCoMKg
wqDCoMKgwqAgKiB0byByZXBvcnQgdGhlIG92ZXJhbGwgYnVzeW5lc3MuIFRoaXMgaXMgd2hhdCB0
aGUgCj4+Pj4+IHdhaXQtaW9jdGwgZG9lcy4KPj4+Pj4gwqDCoMKgwqDCoMKgICoKPj4+Pj4gwqDC
oMKgwqDCoMKgICovCj4+Pj4+IC1yZXRyeToKPj4+Pj4gLcKgwqDCoCBzZXEgPSByYXdfcmVhZF9z
ZXFjb3VudCgmb2JqLT5iYXNlLnJlc3YtPnNlcSk7Cj4+Pj4+IC0KPj4+Pj4gLcKgwqDCoCAvKiBU
cmFuc2xhdGUgdGhlIGV4Y2x1c2l2ZSBmZW5jZSB0byB0aGUgUkVBRCAqYW5kKiBXUklURSAKPj4+
Pj4gZW5naW5lICovCj4+Pj4+IC3CoMKgwqAgYXJncy0+YnVzeSA9IAo+Pj4+PiBidXN5X2NoZWNr
X3dyaXRlcihkbWFfcmVzdl9leGNsX2ZlbmNlKG9iai0+YmFzZS5yZXN2KSk7Cj4+Pj4+IC0KPj4+
Pj4gLcKgwqDCoCAvKiBUcmFuc2xhdGUgc2hhcmVkIGZlbmNlcyB0byBSRUFEIHNldCBvZiBlbmdp
bmVzICovCj4+Pj4+IC3CoMKgwqAgbGlzdCA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KG9iai0+YmFz
ZS5yZXN2KTsKPj4+Pj4gLcKgwqDCoCBpZiAobGlzdCkgewo+Pj4+PiAtwqDCoMKgwqDCoMKgwqAg
dW5zaWduZWQgaW50IHNoYXJlZF9jb3VudCA9IGxpc3QtPnNoYXJlZF9jb3VudCwgaTsKPj4+Pj4g
LQo+Pj4+PiAtwqDCoMKgwqDCoMKgwqAgZm9yIChpID0gMDsgaSA8IHNoYXJlZF9jb3VudDsgKytp
KSB7Cj4+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNl
ID0KPj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByY3VfZGVyZWZlcmVuY2Uo
bGlzdC0+c2hhcmVkW2ldKTsKPj4+Pj4gLQo+Pj4+PiArwqDCoMKgIGFyZ3MtPmJ1c3kgPSBmYWxz
ZTsKPj4+Pgo+Pj4+IFlvdSBjYW4gZHJvcCB0aGlzIGxpbmUsIGVzcGVjaWFsbHkgc2luY2UgaXQg
aXMgbm90IGEgYm9vbGVhbi4gV2l0aCAKPj4+PiB0aGF0Ogo+Pj4+Cj4+Pj4gUmV2aWV3ZWQtYnk6
IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4+Pgo+Pj4gSGF2aW5n
IHNhaWQgdGhpcywgb25lIHRoaW5nIHRvIGFkZCBpbiB0aGUgY29tbWl0IG1lc3NhZ2UgaXMgc29t
ZSAKPj4+IGNvbW1lbnRhcnkgdGhhdCBhbHRob3VnaCBzaW1wbGVyIGluIGNvZGUsIHRoZSBuZXcg
aW1wbGVtZW50YXRpb24gaGFzIAo+Pj4gYSBsb3QgbW9yZSBhdG9taWMgaW5zdHJ1Y3Rpb25zIGR1
ZSBhbGwgdGhlIGV4dHJhIGZlbmNlIGdldC9wdXQuCj4+Pgo+Pj4gU2F5aW5nIHRoaXMgYmVjYXVz
ZSBJIHJlbWVtYmVyZWQgYnVzeSBpb2N0bCBpcyBxdWl0ZSBhbiBvdmVyLXBvcHVsYXIgCj4+PiBv
bmUuIFRoaW5raW5nIGFib3V0IHRyYWNlcyBmcm9tIHNvbWUgcmVhbCB1c2Vyc3BhY2VzIEkgbG9v
a2VkIGF0IGluIAo+Pj4gdGhlIHBhc3QuCj4+Pgo+Pj4gU28gSSB0aGluayBhY2sgZnJvbSBtYWlu
dGFpbmVycyB3aWxsIGJlIHJlcXVpcmVkIGhlcmUuIEJlY2F1c2UgSSAKPj4+IGp1c3QgZG9uJ3Qg
a25vdyBpZiBhbnkgcGVyZm9ybWFuY2UgaW1wYWN0IHdpbGwgYmUgdmlzaWJsZSBvciBub3QuIFNv
IAo+Pj4gdmlldyBteSByLWIgYXMgImNvZGUgbG9va3MgZmluZSIgYnV0IEkgYW0gb24gdGhlIGZl
bmNlIGlmIGl0IHNob3VsZCAKPj4+IGFjdHVhbGx5IGJlIG1lcmdlZC4gUHJvYmFibHkgbGVhbmlu
ZyB0b3dhcmRzIG5vIGFjdHVhbGx5IC0gZ2l2ZW4gaG93IAo+Pj4gdGhlIGNvZGUgaXMgbG9jYWxp
c2VkIGhlcmUgYW5kIEkgZGlzbGlrZSBidXJkZW5pbmcgb2xkIHBsYXRmb3JtcyAKPj4+IHdpdGgg
bW9yZSBDUFUgdGltZSBpdCBjb3VsZCBiZSBjaGVhcGx5IGxlZnQgYXMgaXMuCj4+Cj4+IFdlbGwg
cHJldmlvdXNseSB3ZSB3b3VsZCBoYXZlIGFsbG9jYXRlZCBtZW1vcnksIHdoaWNoIGFzIGZhciBh
cyBJIAo+PiBrbm93IGhhcyBtb3JlIG92ZXJoZWFkIHRoYW4gYSBmZXcgZXh0cmEgYXRvbWljIG9w
ZXJhdGlvbnMuCj4KPiBJdCBkb2Vzbid0LCBpdCBvbmx5IHVzZXMgZG1hX3Jlc3ZfZXhjbF9mZW5j
ZSBhbmQgZG1hX3Jlc3Zfc2hhcmVkX2xpc3QuCgpZZWFoLCBvayB0aGVuIHRoYXQncyBub3QgcmVh
bGx5IGFuIG9wdGlvbiBhbnkgbW9yZS4KCkkgdGhpbmsgRGFuaWVsIGFuZCBJIGFyZSB0b3RhbGx5
IG9uIHRoZSBzYW1lIHBhZ2UgdGhhdCB3ZSB3b24ndCBhbGxvdyAKdGhpcyBSQ1UgZGFuY2UgaW4g
dGhlIGRyaXZlcnMgYW55IG1vcmUuCgpSZWdhcmRzLApDaHJpc3RpYW4uCgo+Cj4gUmVnYXJkcywK
Pgo+IFR2cnRrbwo+Cj4+IE9uIHRoZSBvdGhlciBoYW5kIEkgY291bGQgYXMgd2VsbCBzdGljayB3
aXRoIGRtYV9yZXN2X2dldF9mZW5jZXMoKSBoZXJlLgo+Pgo+PiBSZWdhcmRzLAo+PiBDaHJpc3Rp
YW4uCj4+Cj4+Pgo+Pj4gUmVnYXJkcywKPj4+Cj4+PiBUdnJ0a28KPj4+Cj4+Pgo+Pj4+Cj4+Pj4g
UmVnYXJkcywKPj4+Pgo+Pj4+IFR2cnRrbwo+Pj4+Cj4+Pj4+ICsgZG1hX3Jlc3ZfaXRlcl9iZWdp
bigmY3Vyc29yLCBvYmotPmJhc2UucmVzdiwgdHJ1ZSk7Cj4+Pj4+ICvCoMKgwqAgZG1hX3Jlc3Zf
Zm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQoJmN1cnNvciwgZmVuY2UpIHsKPj4+Pj4gK8KgwqDCoMKg
wqDCoMKgIGlmIChkbWFfcmVzdl9pdGVyX2lzX3Jlc3RhcnRlZCgmY3Vyc29yKSkKPj4+Pj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgYXJncy0+YnVzeSA9IDA7Cj4+Pj4+ICsKPj4+Pj4gK8KgwqDC
oMKgwqDCoMKgIGlmIChkbWFfcmVzdl9pdGVyX2lzX2V4Y2x1c2l2ZSgmY3Vyc29yKSkKPj4+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyogVHJhbnNsYXRlIHRoZSBleGNsdXNpdmUgZmVuY2Ug
dG8gdGhlIFJFQUQgKmFuZCogCj4+Pj4+IFdSSVRFIGVuZ2luZSAqLwo+Pj4+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBhcmdzLT5idXN5IHw9IGJ1c3lfY2hlY2tfd3JpdGVyKGZlbmNlKTsKPj4+
Pj4gK8KgwqDCoMKgwqDCoMKgIGVsc2UKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyog
VHJhbnNsYXRlIHNoYXJlZCBmZW5jZXMgdG8gUkVBRCBzZXQgb2YgZW5naW5lcyAqLwo+Pj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBhcmdzLT5idXN5IHw9IGJ1c3lfY2hlY2tfcmVhZGVy
KGZlbmNlKTsKPj4+Pj4gLcKgwqDCoMKgwqDCoMKgIH0KPj4+Pj4gwqDCoMKgwqDCoCB9Cj4+Pj4+
IC0KPj4+Pj4gLcKgwqDCoCBpZiAoYXJncy0+YnVzeSAmJiByZWFkX3NlcWNvdW50X3JldHJ5KCZv
YmotPmJhc2UucmVzdi0+c2VxLCAKPj4+Pj4gc2VxKSkKPj4+Pj4gLcKgwqDCoMKgwqDCoMKgIGdv
dG8gcmV0cnk7Cj4+Pj4+ICvCoMKgwqAgZG1hX3Jlc3ZfaXRlcl9lbmQoJmN1cnNvcik7Cj4+Pj4+
IMKgwqDCoMKgwqAgZXJyID0gMDsKPj4+Pj4gwqAgb3V0Ogo+Pj4+Pgo+PgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJv
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
