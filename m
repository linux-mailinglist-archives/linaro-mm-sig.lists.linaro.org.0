Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 370E74226FB
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 14:45:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CA92D60A8A
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 12:45:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A455160902; Tue,  5 Oct 2021 12:44:59 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3075E605A9;
	Tue,  5 Oct 2021 12:44:57 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 617EF6057D
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 12:44:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5FE35605A9; Tue,  5 Oct 2021 12:44:55 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 by lists.linaro.org (Postfix) with ESMTPS id 56CC16057D
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 12:44:53 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id e12so16848884wra.4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Oct 2021 05:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=YMDignomC08BRwfUF/sIHCEC10nMlQk67HXzVn7ZgmM=;
 b=kcJKNkA8MP3I3nwjUUdmLOsGEoBkTzagGxarJ0cb/Lp8dHfy1mkTCiVS07Or/O8Tvf
 kUIUp3AkgnVjVEAZVG7erWoxbVm2wXH3KT32M1IjWyzbby0eX6XaLlKhNJ+ucAfRtdsW
 Idy+LdhaCKwNSV7/9oLUti9Mj6ZeKD4bbBI0uPxtn4KdBj6v3nsEh6vUBPvh25SKpk8t
 hKlyatAeCD6FZwAgiIbDZPjp1PKI4M+i+PZe1cFyhSfcqers2UmilbXmzIAZ4WH6mtMB
 KKzYagjhkkE41HdfAVsJnuzyV+t8PMOd2KalVxoDNIEPR0IBe20yFjvpRfbfeHHqkpDg
 eqYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=YMDignomC08BRwfUF/sIHCEC10nMlQk67HXzVn7ZgmM=;
 b=4JfuBoGD4pwN71/iyuaEiai7EWIT8PJyLa/OTKsAjfGnRAcT0BAHzk1JNRkVhNz0GH
 pask+7ypaI5jDHIlxReq8x8lhS2AgEcJp+3TJdJQTLe/WNUCpmEGzjnb+2lY5jtLj8FA
 uKgkYKI+/k1hWmgpzDOyNOhcdk48PCpRXTLjkkdAe7row9fJEMKisC7wqJtEljgZzuwZ
 +TwNvSzy+bIi5Jpm8MiyLWhtJQiup1DL1SQVjObQihOczUG1ZyS4JC9g2WJyiwSVvmgF
 dFnjkF0R+QrU+FhpniCgdTgbBtcxhvHMAJ042sK6doOUK29TCa8lgUPYAhzWPyDM3Dq5
 7ouw==
X-Gm-Message-State: AOAM531v2js+E3hyycOa41fGXQhWNf7eB6gUoQA9k8kH1PJqQxBl3hXV
 UZVfiNjRAbGcjGLqughCR0g=
X-Google-Smtp-Source: ABdhPJzMC2KLIRqY0Nit2YvLoMyvCYBUDyf84pyfU7SSY9HZsKtYwNlBnTdpeDAU8lKbJG76NGuY8Q==
X-Received: by 2002:adf:e0cc:: with SMTP id m12mr21566451wri.62.1633437892428; 
 Tue, 05 Oct 2021 05:44:52 -0700 (PDT)
Received: from [192.168.178.21] (p5b0ea1b5.dip0.t-ipconnect.de.
 [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id k26sm2571252wms.39.2021.10.05.05.44.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 Oct 2021 05:44:52 -0700 (PDT)
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-18-christian.koenig@amd.com>
 <50b8ffb7-2720-619d-3140-af2f90450a21@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <65e28697-6f0a-7f97-d49b-ebf8d0b8d23f@gmail.com>
Date: Tue, 5 Oct 2021 14:44:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <50b8ffb7-2720-619d-3140-af2f90450a21@linux.intel.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 17/28] drm/i915: use the new iterator in
 i915_gem_busy_ioctl v2
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

QW0gMDUuMTAuMjEgdW0gMTQ6NDAgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoKPgo+IE9uIDA1LzEw
LzIwMjEgMTI6MzcsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+IFRoaXMgbWFrZXMgdGhlIGZ1
bmN0aW9uIG11Y2ggc2ltcGxlciBzaW5jZSB0aGUgY29tcGxleAo+PiByZXRyeSBsb2dpYyBpcyBu
b3cgaGFuZGxlZCBlbHNlIHdoZXJlLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4+IFJldmlld2VkLWJ5OiBUdnJ0a28gVXJz
dWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Cj4gUmVtaW5kZXIgLSByLWIgd2FzIHJl
dHJhY3RlZCB1bnRpbCBhdCBsZWFzdCBtb3JlIHRleHQgaXMgYWRkZWQgdG8gCj4gY29tbWl0IG1l
c3NhZ2UgYWJvdXQgcHJvcyBhbmQgY29ucy4gQnV0IHJlYWxseSBzb21lIGRpc2N1c3Npb24gaGFk
IAo+IGluc2lkZSB0aGUgaTkxNSB0ZWFtIG9uIHRoZSB0b3BpYy4KClN1cmUsIGdvaW5nIHRvIG1v
dmUgdGhvc2UgdG8gYSBkaWZmZXJlbnQgYnJhbmNoLgoKQnV0IEkgcmVhbGx5IG9ubHkgc2VlIHRo
ZSBmb2xsb3dpbmcgb3B0aW9uczoKMS4gR3JhYiB0aGUgbG9jay4KMi4gVXNlIHRoZSBfdW5sb2Nr
ZWQgdmFyaWFudCB3aXRoIGdldC9wdXQuCjMuIEFkZCBhbm90aGVyIF9yY3UgaXRlcmF0b3IganVz
dCBmb3IgdGhpcyBjYXNlLgoKSSdtIGZpbmUgd2l0aCBlaXRoZXIsIGJ1dCBEYW5pZWwgcHJldHR5
IG11Y2ggYWxyZWFkeSByZWplY3RlZCAjMyBhbmQgCiMyLyMxIGhhcyBtb3JlIG92ZXJoZWFkIHRo
ZW4gdGhlIG9yaWdpbmFsIG9uZS4KClJlZ2FyZHMsCkNocmlzdGlhbi4KCj4KPiBSZWdhcmRzLAo+
Cj4gVHZydGtvCj4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9idXN5LmMgfCAzNSArKysrKysrKysrLS0tLS0tLS0tLS0tLS0KPj4gwqAgMSBmaWxlIGNoYW5n
ZWQsIDE0IGluc2VydGlvbnMoKyksIDIxIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYyAKPj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fYnVzeS5jCj4+IGluZGV4IDYyMzRlMTcyNTljMS4uZGM3
MmIzNmRhZTU0IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fYnVzeS5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9idXN5
LmMKPj4gQEAgLTgyLDggKzgyLDggQEAgaTkxNV9nZW1fYnVzeV9pb2N0bChzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2LCB2b2lkIAo+PiAqZGF0YSwKPj4gwqAgewo+PiDCoMKgwqDCoMKgIHN0cnVjdCBk
cm1faTkxNV9nZW1fYnVzeSAqYXJncyA9IGRhdGE7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm9iajsKPj4gLcKgwqDCoCBzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqbGlz
dDsKPj4gLcKgwqDCoCB1bnNpZ25lZCBpbnQgc2VxOwo+PiArwqDCoMKgIHN0cnVjdCBkbWFfcmVz
dl9pdGVyIGN1cnNvcjsKPj4gK8KgwqDCoCBzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKPj4gwqDC
oMKgwqDCoCBpbnQgZXJyOwo+PiDCoCDCoMKgwqDCoMKgIGVyciA9IC1FTk9FTlQ7Cj4+IEBAIC0x
MDksMjcgKzEwOSwyMCBAQCBpOTE1X2dlbV9idXN5X2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpk
ZXYsIAo+PiB2b2lkICpkYXRhLAo+PiDCoMKgwqDCoMKgwqAgKiB0byByZXBvcnQgdGhlIG92ZXJh
bGwgYnVzeW5lc3MuIFRoaXMgaXMgd2hhdCB0aGUgd2FpdC1pb2N0bCAKPj4gZG9lcy4KPj4gwqDC
oMKgwqDCoMKgICoKPj4gwqDCoMKgwqDCoMKgICovCj4+IC1yZXRyeToKPj4gLcKgwqDCoCBzZXEg
PSByYXdfcmVhZF9zZXFjb3VudCgmb2JqLT5iYXNlLnJlc3YtPnNlcSk7Cj4+IC0KPj4gLcKgwqDC
oCAvKiBUcmFuc2xhdGUgdGhlIGV4Y2x1c2l2ZSBmZW5jZSB0byB0aGUgUkVBRCAqYW5kKiBXUklU
RSBlbmdpbmUgKi8KPj4gLcKgwqDCoCBhcmdzLT5idXN5ID0gCj4+IGJ1c3lfY2hlY2tfd3JpdGVy
KGRtYV9yZXN2X2V4Y2xfZmVuY2Uob2JqLT5iYXNlLnJlc3YpKTsKPj4gLQo+PiAtwqDCoMKgIC8q
IFRyYW5zbGF0ZSBzaGFyZWQgZmVuY2VzIHRvIFJFQUQgc2V0IG9mIGVuZ2luZXMgKi8KPj4gLcKg
wqDCoCBsaXN0ID0gZG1hX3Jlc3Zfc2hhcmVkX2xpc3Qob2JqLT5iYXNlLnJlc3YpOwo+PiAtwqDC
oMKgIGlmIChsaXN0KSB7Cj4+IC3CoMKgwqDCoMKgwqDCoCB1bnNpZ25lZCBpbnQgc2hhcmVkX2Nv
dW50ID0gbGlzdC0+c2hhcmVkX2NvdW50LCBpOwo+PiAtCj4+IC3CoMKgwqDCoMKgwqDCoCBmb3Ig
KGkgPSAwOyBpIDwgc2hhcmVkX2NvdW50OyArK2kpIHsKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UgPQo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHJjdV9kZXJlZmVyZW5jZShsaXN0LT5zaGFyZWRbaV0pOwo+PiAtCj4+ICvCoMKgwqAg
YXJncy0+YnVzeSA9IDA7Cj4+ICvCoMKgwqAgZG1hX3Jlc3ZfaXRlcl9iZWdpbigmY3Vyc29yLCBv
YmotPmJhc2UucmVzdiwgdHJ1ZSk7Cj4+ICvCoMKgwqAgZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2Vf
dW5sb2NrZWQoJmN1cnNvciwgZmVuY2UpIHsKPj4gK8KgwqDCoMKgwqDCoMKgIGlmIChkbWFfcmVz
dl9pdGVyX2lzX3Jlc3RhcnRlZCgmY3Vyc29yKSkKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
YXJncy0+YnVzeSA9IDA7Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgIGlmIChkbWFfcmVzdl9pdGVy
X2lzX2V4Y2x1c2l2ZSgmY3Vyc29yKSkKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyogVHJh
bnNsYXRlIHRoZSBleGNsdXNpdmUgZmVuY2UgdG8gdGhlIFJFQUQgKmFuZCogV1JJVEUgCj4+IGVu
Z2luZSAqLwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBhcmdzLT5idXN5IHw9IGJ1c3lfY2hl
Y2tfd3JpdGVyKGZlbmNlKTsKPj4gK8KgwqDCoMKgwqDCoMKgIGVsc2UKPj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgLyogVHJhbnNsYXRlIHNoYXJlZCBmZW5jZXMgdG8gUkVBRCBzZXQgb2YgZW5n
aW5lcyAqLwo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBhcmdzLT5idXN5IHw9IGJ1c3lf
Y2hlY2tfcmVhZGVyKGZlbmNlKTsKPj4gLcKgwqDCoMKgwqDCoMKgIH0KPj4gwqDCoMKgwqDCoCB9
Cj4+IC0KPj4gLcKgwqDCoCBpZiAoYXJncy0+YnVzeSAmJiByZWFkX3NlcWNvdW50X3JldHJ5KCZv
YmotPmJhc2UucmVzdi0+c2VxLCBzZXEpKQo+PiAtwqDCoMKgwqDCoMKgwqAgZ290byByZXRyeTsK
Pj4gK8KgwqDCoCBkbWFfcmVzdl9pdGVyX2VuZCgmY3Vyc29yKTsKPj4gwqAgwqDCoMKgwqDCoCBl
cnIgPSAwOwo+PiDCoCBvdXQ6Cj4+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=
