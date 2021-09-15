Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9C140C44B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Sep 2021 13:20:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1CB5262164
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Sep 2021 11:20:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0AFD6623DC; Wed, 15 Sep 2021 11:20:01 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B04AB60FC4;
	Wed, 15 Sep 2021 11:19:57 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 686256088A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Sep 2021 11:19:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 601AF60FC4; Wed, 15 Sep 2021 11:19:56 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by lists.linaro.org (Postfix) with ESMTPS id 4E48F6088A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Sep 2021 11:19:54 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id u18so1551126wrg.5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Sep 2021 04:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=93lsXU/Z3uxd8n34/9P2RUUBOmtBhYmL6uqJmdWmF/o=;
 b=FQNYqWS4ukF31jcFARjgKDPNO9U9aouBEuBONB/qI4hHlUp1KzR9maed8WVf3OWJO8
 85TLH+YTmkH3tw0CfVzOXwI+iOtJF4kOffF0dTr1s/Pjd2670p2Qf4LuQFyIqp8JXQFi
 XWkenTcCx01zB81GfqOYW4UP/io6X8tVe9sT0ndKSlPfX4HE/EP1HzYCGTYLITN/H6Dc
 3jxKXiSzQt+ZEIcz7DzBtRD4eNIU501L864O2eOyBIyFgvTf7mKxgiAtev3bjuTcF/nW
 kVbw7aRw3wSsT7OzhJhjOZNXXZSmicoz4m/9xxj3L8xv/Mjc5bmoWY876ggpDz0AOyS6
 utbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=93lsXU/Z3uxd8n34/9P2RUUBOmtBhYmL6uqJmdWmF/o=;
 b=lLDUsK0E0A1kx4BY9jzhNEChCMI4cbVFdAGvzZFftnZitU8QTidq7LJYbfwM3n1JkT
 qQLUargj3U0b3xc+5SYGm+lLDfpenRa/79yvbMKg2c3PWI3b97Hmih/BhY8V7k/bFCux
 MWHpzo9x0E1szcebkd7yFHPfrLUnoTh41kkqnIL5hF/oxSZ0GMnLOfDfZdwzMjtPXr4G
 WXp+rkMI6lUhbrD7BARr5TDBeVCew3fllL8ADLJEbo2Qrj5TlzGRRuXoGE6F+ykHJhsp
 VMzI6ZEN67m7X+TM7Y99QdJDbyILiBTm5o1KQwxJtbpSj6UHqiOsijJt0XIIrI07LOSW
 Omog==
X-Gm-Message-State: AOAM532/PvF2bT1cOvYZYP0gcftu6crWdv6nem8fYMaGChUzAfe+BDhi
 Hpekd/szG6wcD7reKMmYY74=
X-Google-Smtp-Source: ABdhPJzo7z9Zb7dkNgAWCsWWmzcOTtaDbeuyUXJErhg6OxOAjyeFUh0u1y5yexp4OvMxrUy1oSqjJQ==
X-Received: by 2002:a5d:43d2:: with SMTP id v18mr4451441wrr.98.1631704793321; 
 Wed, 15 Sep 2021 04:19:53 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:d03d:8939:3840:1f95?
 ([2a02:908:1252:fb60:d03d:8939:3840:1f95])
 by smtp.gmail.com with ESMTPSA id l1sm3450397wmq.8.2021.09.15.04.19.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Sep 2021 04:19:52 -0700 (PDT)
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
References: <20210913131707.45639-1-christian.koenig@amd.com>
 <20210913131707.45639-19-christian.koenig@amd.com>
 <46a40614-b448-7f2d-7b6b-0705c4277e2b@linux.intel.com>
 <6c0217a7-6ac8-0c12-4087-ee55f456f99c@gmail.com>
 <f9b65430-de19-7c3b-c77f-5a88114037c5@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <be670538-cba3-1362-c79d-910a0bb54b3d@gmail.com>
Date: Wed, 15 Sep 2021 13:19:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <f9b65430-de19-7c3b-c77f-5a88114037c5@linux.intel.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH 18/26] drm/i915: use new
 iterator in i915_gem_object_last_write_engine
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
Cc: intel-gfx@lists.freedesktop.org, daniel@ffwll.ch
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTQuMDkuMjEgdW0gMTQ6NDcgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoKPgo+IE9uIDE0LzA5
LzIwMjEgMTM6MzIsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+IEFtIDE0LjA5LjIxIHVtIDE0
OjI3IHNjaHJpZWIgVHZydGtvIFVyc3VsaW46Cj4+Pgo+Pj4gT24gMTMvMDkvMjAyMSAxNDoxNiwg
Q2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4+PiBUaGlzIGlzIG1heWJlIGV2ZW4gYSBmaXggc2lu
Y2UgdGhlIFJDVSB1c2FnZSBoZXJlIGxvb2tzIGluY29ycmVjdC4KPj4+Cj4+PiBXaGF0IHlvdSB0
aGluayBpcyBpbmNvcnJlY3Q/IFBvaW50bGVzcyBleHRyYSByY3UgbG9ja2luZz8KPj4KPj4gWWVh
aCwgZXhhY3RseSB0aGF0LiBJIGFsc28gd29uZGVyZWQgZm9yIGEgc2Vjb25kIGlmIHJjdV9yZWFk
X2xvY2soKSAKPj4gY2FuIG5lc3Qgb3Igbm90LiBCdXQgb2J2aW91c2x5IGl0IGVpdGhlciB3b3Jr
cyBvciBsb2NrZGVwIGhhc24ndCAKPj4gY29tcGxhaW5lZCB5ZXQuCj4+Cj4+IEJ1dCBJJ3ZlIG1h
ZGUgYSBtaXN0YWtlIGhlcmUgYW5kIGF0IGEgY291cGxlIG9mIG90aGVyIHBsYWNlcyB0byAKPj4g
cmVtb3ZlIHRvIG1hbnkgcmN1X3JlYWRfbG9jaygpIGNhbGxzLiBUaGFua3MgZm9yIHBvaW50aW5n
IHRoYXQgb3V0LCAKPj4gZ29pbmcgdG8gZml4IGl0IGFzIHdlbGwuCj4KPiBBY2suCj4KPj4+IEFs
c28sIEZXSVcsIEkgc3VibWl0dGVkIGEgcGF0Y2ggdG8gcmVtb3ZlIHRoaXMgZnVuY3Rpb24gYWx0
b2dldGhlciAKPj4+IHNpbmNlIGl0cyBJTU8gcHJldHR5IHVzZWxlc3MsIGp1c3QgZmFpbGVkIGlu
IGdldHRpbmcgYW55b25lIHRvIGFjayAKPj4+IGl0IHNvIGZhci4KPj4KPj4gSSB3YXMgb24gdGhl
IGVkZ2Ugb2Ygc3VnZ2VzdGluZyB0aGF0IGFzIHdlbGwgc2luY2UgaXQncyBvbmx5IGRlYnVnZnMg
Cj4+IHVzYWdlIGxvb2tlZCBxdWl0ZSBwb2ludGxlc3MgdG8gbWUuCj4+Cj4+IEZlZWwgZnJlZSB0
byBDQyBtZSBvbiB0aGUgcGF0Y2ggYW5kIHlvdSBjYW4gaGF2ZSBteSBhY2tlZC1ieS4KPgo+IFBh
dGNoIGlzIGhlcmUgCj4gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoLzQ1
MTg2NC8/c2VyaWVzPTk0MjAyJnJldj0xLCAKPiB0aGFua3MhCgpGZWVsIGZyZWUgdG8gYWRkIGFu
IEFja2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IAp0
byB0aGF0IG9uZS4KClJlZ2FyZHMsCkNocmlzdGlhbi4KCj4KPiBSZWdhcmRzLAo+Cj4gVHZydGtv
Cj4KPj4gVGhhbmtzLAo+PiBDaHJpc3RpYW4uCj4+Cj4+Pgo+Pj4gUmVnYXJkcywKPj4+Cj4+PiBU
dnJ0a28KPj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPgo+Pj4+IC0tLQo+Pj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9vYmplY3QuaCB8IDE1ICsrKysrKystLS0tLS0tLQo+Pj4+IMKgIDEgZmlsZSBj
aGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCj4+Pj4KPj4+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oIAo+Pj4+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oCj4+Pj4gaW5kZXggZTll
ZWNlYmY1YzlkLi4zMzQzOTIyYWY0ZDYgMTAwNjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oCj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oCj4+Pj4gQEAgLTUwMCwxNiArNTAwLDE1IEBAIHN0YXRp
YyBpbmxpbmUgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqCj4+Pj4gwqAgaTkxNV9nZW1fb2JqZWN0
X2xhc3Rfd3JpdGVfZW5naW5lKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCj4+Pj4g
wqAgewo+Pj4+IMKgwqDCoMKgwqAgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lID0gTlVM
TDsKPj4+PiArwqDCoMKgIHN0cnVjdCBkbWFfcmVzdl9jdXJzb3IgY3Vyc29yOwo+Pj4+IMKgwqDC
oMKgwqAgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7Cj4+Pj4gwqAgLcKgwqDCoCByY3VfcmVhZF9s
b2NrKCk7Cj4+Pj4gLcKgwqDCoCBmZW5jZSA9IGRtYV9yZXN2X2dldF9leGNsX3VubG9ja2VkKG9i
ai0+YmFzZS5yZXN2KTsKPj4+PiAtwqDCoMKgIHJjdV9yZWFkX3VubG9jaygpOwo+Pj4+IC0KPj4+
PiAtwqDCoMKgIGlmIChmZW5jZSAmJiBkbWFfZmVuY2VfaXNfaTkxNShmZW5jZSkgJiYgCj4+Pj4g
IWRtYV9mZW5jZV9pc19zaWduYWxlZChmZW5jZSkpCj4+Pj4gLcKgwqDCoMKgwqDCoMKgIGVuZ2lu
ZSA9IHRvX3JlcXVlc3QoZmVuY2UpLT5lbmdpbmU7Cj4+Pj4gLcKgwqDCoCBkbWFfZmVuY2VfcHV0
KGZlbmNlKTsKPj4+PiAtCj4+Pj4gK8KgwqDCoCBkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxv
Y2tlZChvYmotPmJhc2UucmVzdiwgJmN1cnNvciwgZmFsc2UsCj4+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZmVuY2UpIHsKPj4+PiArwqDCoMKgwqDCoMKgwqAg
aWYgKGZlbmNlICYmIGRtYV9mZW5jZV9pc19pOTE1KGZlbmNlKSAmJgo+Pj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgICFkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZmVuY2UpKQo+Pj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGVuZ2luZSA9IHRvX3JlcXVlc3QoZmVuY2UpLT5lbmdpbmU7Cj4+Pj4g
K8KgwqDCoCB9Cj4+Pj4gwqDCoMKgwqDCoCByZXR1cm4gZW5naW5lOwo+Pj4+IMKgIH0KPj4+Pgo+
PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBz
Oi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
