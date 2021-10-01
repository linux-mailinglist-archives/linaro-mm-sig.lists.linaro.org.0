Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E127E41EB12
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 12:40:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 535BC62079
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 10:40:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4646A631AE; Fri,  1 Oct 2021 10:39:58 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F0032619CD;
	Fri,  1 Oct 2021 10:39:54 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1620B61805
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:39:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1379F619CD; Fri,  1 Oct 2021 10:39:54 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by lists.linaro.org (Postfix) with ESMTPS id 0C73D61805
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:39:52 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id a18so2675600wru.4
 for <linaro-mm-sig@lists.linaro.org>; Fri, 01 Oct 2021 03:39:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=OaGv+qm5SuNdsSmcpk03CbdLQM2e6BUerjnin6OTQVo=;
 b=LbrVyo5iRAYHVwqsB83B+gqgn+xQo4l/WliW9dQclgC4bINop8954OfITWNxjcw6Gt
 SO7BHo9r1tjfntFJxWokhynXQwO1I2WOrni9h00qnIzz4dnJ44KJDWODAKE+U/Q0MHia
 kFCTSDSBDUXG1RiecTkWep+33RuLo/97shBYQl4z/wopeWNLRJRGXFZ0KWmiHTRvOdvl
 XEG8ZD3RDSBVnQDUI/SlJ63jaU0jq8oVYUvBn4H5Q2G+7CuYU/OhQ2W1O1HtiI2sFOR9
 LYLs2e72FFDXwFHBvUVl+ZplGwvTxZqD7sDqYHxDV93ilakitf9GiDuoJX08A0heXzPK
 pAkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=OaGv+qm5SuNdsSmcpk03CbdLQM2e6BUerjnin6OTQVo=;
 b=lWSKaQBN8cqyuSz65pjA2DJkdZVNbMP7aE5igiKT76myJ3J5aeV+itK8PHtoWIkhOV
 3vrkoNJni/2rQ8oX4X5CcQ6SdqEWrDRGWu8hd6hxDJXKf/1Xe631EuXoOOGb25oTg+k5
 FyWCEhSVnyC+UYKmW8b73AGkueOsH6uBBZP56vHT4DFWR03JsLarekk5Kg0+eXmiwgnL
 tW4jlhYmfVF85+qQiN7hO5+9K+LY4anJmKiAf9fTsNBLfghcWFMvR3RCBGarkeDOGvva
 6wQW6WqCLiGd2mhLas60qwVCz1/cvJeppqfnyz+2G6y3GzZDYpcjXy7trFlbAJ15hL2Y
 bIkQ==
X-Gm-Message-State: AOAM533HCN5l92bfv9cUEhdbmbVlLO86S3C91qGaxiMH9tlSoJ4d3+Ke
 WtPeocMsjo3bQATmZQDGI48=
X-Google-Smtp-Source: ABdhPJzzsWpPn1VpZitrRxGC4hk7LTyPFUdYE0nVKmdn4+DLsxUEpKC52grmglpl2LBR8hnvQu2J8g==
X-Received: by 2002:adf:8b45:: with SMTP id v5mr11569085wra.211.1633084791135; 
 Fri, 01 Oct 2021 03:39:51 -0700 (PDT)
Received: from [192.168.178.21] (p5b0ea1b5.dip0.t-ipconnect.de.
 [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id w23sm7676012wmi.6.2021.10.01.03.39.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 01 Oct 2021 03:39:50 -0700 (PDT)
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20211001100610.2899-1-christian.koenig@amd.com>
 <20211001100610.2899-18-christian.koenig@amd.com>
 <c6837f74-0ba5-e3c2-5778-a9d120c6ea67@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <cda5d293-4cf2-3b9b-7e38-4ad7cac2db1e@gmail.com>
Date: Fri, 1 Oct 2021 12:39:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <c6837f74-0ba5-e3c2-5778-a9d120c6ea67@linux.intel.com>
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

QW0gMDEuMTAuMjEgdW0gMTI6Mzcgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoKPgo+IE9uIDAxLzEw
LzIwMjEgMTE6MDUsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+IFRoaXMgbWFrZXMgdGhlIGZ1
bmN0aW9uIG11Y2ggc2ltcGxlciBzaW5jZSB0aGUgY29tcGxleAo+PiByZXRyeSBsb2dpYyBpcyBu
b3cgaGFuZGxlZCBlbHNlIHdoZXJlLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4+IFJldmlld2VkLWJ5OiBUdnJ0a28gVXJz
dWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Cj4gU29ycnkgSSByZXRyYWN0IHVudGls
IHlvdSBhZGQgdGhlIHRleHQgYWJvdXQgdGhlIGluY3JlYXNlZCBjb3N0IG9mIHRoZSAKPiBhZGRl
ZCBhdG9taWNzLiBJIHRoaW5rIHRoZSBwb2ludCBpcyBpbXBvcnRhbnQgdG8gZGlzY3VzcyBnaXZl
biAKPiBwcm9wb3NhbCBnb2VzIGZyb20gemVybyBhdG9taWNzIHRvIG51bV9mZW5jZXMgKiAyIChm
ZW5jZSBnZXQvcHV0IAo+IHVubGVzcyBJIGFtIG1pc3Rha2VuKSBhdG9taWNzIHBlciBidXN5IGlv
Y3RsLiBUaGF0IG1ha2VzIG1lIGxlYW4gCj4gdG93YXJkcyBqdXN0IGxlYXZpbmcgdGhpcyBhcyBp
cyBzaW5jZSBpdCBpcyBub3QgdGhhdCBjb21wbGV4LgoKSSdtIGNlcnRhaW5seSBwdXNoaW5nIGhh
cmQgdG8gcmVtb3ZlIGFsbCBtYW51YWwgUkNVIGRhbmNlIGZyb20gdGhlIApkcml2ZXJzLCBpbmNs
dWRpbmcgdGhpcyBvbmUuCgpUaGUgb25seSBvcHRpb24gaXMgdG8gZWl0aGVyIGhhdmUgdGhlIGF0
b21pY3Mgb3ZlcmhlYWQgKHdoaWNoIGlzIGluZGVlZCAKbnVtX2ZlbmNlcyoyKSBvciB0aGUgbG9j
a2luZyBvdmVyaGVhZC4KClJlZ2FyZHMsCkNocmlzdGlhbi4KCj4KPiBSZWdhcmRzLAo+Cj4gVHZy
dGtvCj4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9idXN5
LmMgfCAzNSArKysrKysrKysrLS0tLS0tLS0tLS0tLS0KPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDE0
IGluc2VydGlvbnMoKyksIDIxIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYyAKPj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fYnVzeS5jCj4+IGluZGV4IDYyMzRlMTcyNTljMS4uZGM3MmIzNmRh
ZTU0IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fYnVz
eS5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9idXN5LmMKPj4g
QEAgLTgyLDggKzgyLDggQEAgaTkxNV9nZW1fYnVzeV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2LCB2b2lkIAo+PiAqZGF0YSwKPj4gwqAgewo+PiDCoMKgwqDCoMKgIHN0cnVjdCBkcm1faTkx
NV9nZW1fYnVzeSAqYXJncyA9IGRhdGE7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iajsKPj4gLcKgwqDCoCBzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqbGlzdDsKPj4g
LcKgwqDCoCB1bnNpZ25lZCBpbnQgc2VxOwo+PiArwqDCoMKgIHN0cnVjdCBkbWFfcmVzdl9pdGVy
IGN1cnNvcjsKPj4gK8KgwqDCoCBzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKPj4gwqDCoMKgwqDC
oCBpbnQgZXJyOwo+PiDCoCDCoMKgwqDCoMKgIGVyciA9IC1FTk9FTlQ7Cj4+IEBAIC0xMDksMjcg
KzEwOSwyMCBAQCBpOTE1X2dlbV9idXN5X2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIAo+
PiB2b2lkICpkYXRhLAo+PiDCoMKgwqDCoMKgwqAgKiB0byByZXBvcnQgdGhlIG92ZXJhbGwgYnVz
eW5lc3MuIFRoaXMgaXMgd2hhdCB0aGUgd2FpdC1pb2N0bCAKPj4gZG9lcy4KPj4gwqDCoMKgwqDC
oMKgICoKPj4gwqDCoMKgwqDCoMKgICovCj4+IC1yZXRyeToKPj4gLcKgwqDCoCBzZXEgPSByYXdf
cmVhZF9zZXFjb3VudCgmb2JqLT5iYXNlLnJlc3YtPnNlcSk7Cj4+IC0KPj4gLcKgwqDCoCAvKiBU
cmFuc2xhdGUgdGhlIGV4Y2x1c2l2ZSBmZW5jZSB0byB0aGUgUkVBRCAqYW5kKiBXUklURSBlbmdp
bmUgKi8KPj4gLcKgwqDCoCBhcmdzLT5idXN5ID0gCj4+IGJ1c3lfY2hlY2tfd3JpdGVyKGRtYV9y
ZXN2X2V4Y2xfZmVuY2Uob2JqLT5iYXNlLnJlc3YpKTsKPj4gLQo+PiAtwqDCoMKgIC8qIFRyYW5z
bGF0ZSBzaGFyZWQgZmVuY2VzIHRvIFJFQUQgc2V0IG9mIGVuZ2luZXMgKi8KPj4gLcKgwqDCoCBs
aXN0ID0gZG1hX3Jlc3Zfc2hhcmVkX2xpc3Qob2JqLT5iYXNlLnJlc3YpOwo+PiAtwqDCoMKgIGlm
IChsaXN0KSB7Cj4+IC3CoMKgwqDCoMKgwqDCoCB1bnNpZ25lZCBpbnQgc2hhcmVkX2NvdW50ID0g
bGlzdC0+c2hhcmVkX2NvdW50LCBpOwo+PiAtCj4+IC3CoMKgwqDCoMKgwqDCoCBmb3IgKGkgPSAw
OyBpIDwgc2hhcmVkX2NvdW50OyArK2kpIHsKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3Ry
dWN0IGRtYV9mZW5jZSAqZmVuY2UgPQo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHJjdV9kZXJlZmVyZW5jZShsaXN0LT5zaGFyZWRbaV0pOwo+PiAtCj4+ICvCoMKgwqAgYXJncy0+
YnVzeSA9IDA7Cj4+ICvCoMKgwqAgZG1hX3Jlc3ZfaXRlcl9iZWdpbigmY3Vyc29yLCBvYmotPmJh
c2UucmVzdiwgdHJ1ZSk7Cj4+ICvCoMKgwqAgZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2VfdW5sb2Nr
ZWQoJmN1cnNvciwgZmVuY2UpIHsKPj4gK8KgwqDCoMKgwqDCoMKgIGlmIChkbWFfcmVzdl9pdGVy
X2lzX3Jlc3RhcnRlZCgmY3Vyc29yKSkKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYXJncy0+
YnVzeSA9IDA7Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgIGlmIChkbWFfcmVzdl9pdGVyX2lzX2V4
Y2x1c2l2ZSgmY3Vyc29yKSkKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyogVHJhbnNsYXRl
IHRoZSBleGNsdXNpdmUgZmVuY2UgdG8gdGhlIFJFQUQgKmFuZCogV1JJVEUgCj4+IGVuZ2luZSAq
Lwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBhcmdzLT5idXN5IHw9IGJ1c3lfY2hlY2tfd3Jp
dGVyKGZlbmNlKTsKPj4gK8KgwqDCoMKgwqDCoMKgIGVsc2UKPj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgLyogVHJhbnNsYXRlIHNoYXJlZCBmZW5jZXMgdG8gUkVBRCBzZXQgb2YgZW5naW5lcyAq
Lwo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBhcmdzLT5idXN5IHw9IGJ1c3lfY2hlY2tf
cmVhZGVyKGZlbmNlKTsKPj4gLcKgwqDCoMKgwqDCoMKgIH0KPj4gwqDCoMKgwqDCoCB9Cj4+IC0K
Pj4gLcKgwqDCoCBpZiAoYXJncy0+YnVzeSAmJiByZWFkX3NlcWNvdW50X3JldHJ5KCZvYmotPmJh
c2UucmVzdi0+c2VxLCBzZXEpKQo+PiAtwqDCoMKgwqDCoMKgwqAgZ290byByZXRyeTsKPj4gK8Kg
wqDCoCBkbWFfcmVzdl9pdGVyX2VuZCgmY3Vyc29yKTsKPj4gwqAgwqDCoMKgwqDCoCBlcnIgPSAw
Owo+PiDCoCBvdXQ6Cj4+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJv
LW1tLXNpZwo=
