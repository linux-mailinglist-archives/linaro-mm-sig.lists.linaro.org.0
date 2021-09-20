Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 95ED54112C0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Sep 2021 12:14:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9613963425
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Sep 2021 10:14:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8BD9761ECD; Mon, 20 Sep 2021 10:14:51 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 45FB461016;
	Mon, 20 Sep 2021 10:14:48 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EF39E60C2C
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Sep 2021 10:14:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id ED0DA61016; Mon, 20 Sep 2021 10:14:45 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by lists.linaro.org (Postfix) with ESMTPS id E0E4360C2C
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Sep 2021 10:14:43 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id u18so26285980wrg.5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Sep 2021 03:14:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=+apC5JxraIi9XnUbenkB6zsj+jT1AkPdAZhfDaY0/v0=;
 b=UU5S0gXMkaLgT22FL8u7q7ClemU+rsXCqmg08b57Lq39L1VejhAjRb6zljx7QdAZZh
 zxAg64pHaQO4y6OTgp5uARWIQq3mnLiU9mRR9B15QNXMtU3XIt/6olcCOdat5K4g7i1m
 Q8s4GpiM3WdaNYflS+o/a6P7rMoQeggLekVKLUWZs9KXIix1+rsGLjNkJWsyMt0dGM3j
 AbriRT7fFda6QkaQcMoB5MxrnT1BRfzGzxk8Xfmyf6D9TlYH9eMrlILzkrBilvVkyuVC
 7JrdPFg6KhAiFwkc2QnqPwjPuFGMI2IJWHOjyeDKJGwn598ieFoz0PWkp8hNl+AQfh+5
 IpGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=+apC5JxraIi9XnUbenkB6zsj+jT1AkPdAZhfDaY0/v0=;
 b=hzGl1vfbWui7I3fWKzfAdCIWZ3nDDQOsZWfL1w6OMtQFMLyYoDoEis2ZNxpSQx/Mon
 IxDqHJw9AsEE3y+/THnR36XtYIVhtZkWllKkmXI+yDG9vIIr1MnJJFDTPI4jfqTyNNea
 i8EzjGvoc+0UcS1QP/HRBrI48qdaboPMSBttXAJ5Wz8aLoMib1nhb4grWF+Nng6F8J8e
 VU9AO1TRaszvMrbxEHFXnHu81NzIkYNWLD2eCXzglu3FH28jKF7Nu3Y6Ncgt1LUqAKCn
 VmhENU+9lU/RGwsexsCxvJj0ovREzieQhZwAckc80/3FqAnhS6Q9YDFnUm2p9YQeKTog
 2ZmQ==
X-Gm-Message-State: AOAM533SrXYDBHiaqRBuUUoLnak0FUdTlYro8+vRMs0FYIlWSBXBL8LL
 zl7ajpC9esk/ot8q3aYZ6L8=
X-Google-Smtp-Source: ABdhPJzOGMrZWZx0h8K8o0iVBQ2Hv8r57sd/+E+hm7Ot4KkLG7Ct2SBV+DbPgKDuKkPBBUjH/z4+qg==
X-Received: by 2002:a1c:22c3:: with SMTP id
 i186mr23905344wmi.145.1632132883040; 
 Mon, 20 Sep 2021 03:14:43 -0700 (PDT)
Received: from [192.168.178.21] (p5b0ea1b5.dip0.t-ipconnect.de.
 [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id l124sm19159561wml.8.2021.09.20.03.14.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Sep 2021 03:14:42 -0700 (PDT)
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20210917123513.1106-1-christian.koenig@amd.com>
 <20210917123513.1106-15-christian.koenig@amd.com>
 <93b93f00-7ad3-9ea3-e947-77297b4552c9@linux.intel.com>
 <60595ff8-7935-c0a4-7c0f-2a4c3a1d62b9@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <3a029992-a648-7684-235e-b5bc53391d5d@gmail.com>
Date: Mon, 20 Sep 2021 12:14:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <60595ff8-7935-c0a4-7c0f-2a4c3a1d62b9@linux.intel.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH 14/26] drm/i915: use the new
 iterator in i915_sw_fence_await_reservation v3
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

QW0gMjAuMDkuMjEgdW0gMTA6NDcgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoKPgo+IE9uIDIwLzA5
LzIwMjEgMDk6NDUsIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+Pgo+PiBPbiAxNy8wOS8yMDIxIDEz
OjM1LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+Pj4gU2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBi
aXQuCj4+Pgo+Pj4gdjI6IHVzZSBkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZSBpbnN0ZWFkLCBhY2Nv
cmRpbmcgdG8gVHZydGtvIHRoZSAKPj4+IGxvY2sgaXMKPj4+IMKgwqDCoMKgIGhlbGQgaGVyZSBh
bnl3YXkuCj4+PiB2MzogYmFjayB0byB1c2luZyBkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxv
Y2tlZC4KPj4KPj4gSXQgZGlkIG5vdCB3b3JrIG91dCAtIHdoYXQgaGFwcGVuZWQ/Cj4gV2FpdCwg
bXkgc3VnZ2VzdGlvbiB0byB0cnkgdGhlIGxvY2tlZCBpdGVyYXRvciB3YXMgYWdhaW5zdCAKPiBp
OTE1X3JlcXVlc3RfYXdhaXRfb2JqZWN0LiBJIGhhdmVuJ3QgbG9va2VkIGF0IHRoaXMgb25lIGF0
IHRoZSB0aW1lIG9yIAo+IGV2ZW4gbm93LgoKRXhhY3RseSEgSSd2ZSBtaXhlZCB0aGUgdHdvIHVw
IGFuZCB0aGlzIG9uZSBoZXJlIGlzIHJlYWxseSBjYWxsZWQgCndpdGhvdXQgaG9sZGluZyBhIGxv
Y2suCgpSZWdhcmRzLApDaHJpc3RpYW4uCgo+Cj4gUmVnYXJkcywKPgo+IFR2cnRrbwo+Cj4KPj4g
UmVnYXJkcywKPj4KPj4gVHZydGtvCj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4+PiAtLS0KPj4+IMKgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfc3dfZmVuY2UuYyB8IDU3IAo+Pj4gKysrKysrKystLS0tLS0tLS0tLS0t
LS0tLS0tLQo+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDQyIGRlbGV0
aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N3
X2ZlbmNlLmMgCj4+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3dfZmVuY2UuYwo+Pj4g
aW5kZXggYzU4OWE2ODFkYTc3Li43NjM1YjA0NzhlYTUgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3N3X2ZlbmNlLmMKPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfc3dfZmVuY2UuYwo+Pj4gQEAgLTU3Miw1NiArNTcyLDI5IEBAIGludCBpOTE1X3N3
X2ZlbmNlX2F3YWl0X3Jlc2VydmF0aW9uKHN0cnVjdCAKPj4+IGk5MTVfc3dfZmVuY2UgKmZlbmNl
LAo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHVuc2lnbmVk
IGxvbmcgdGltZW91dCwKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBnZnBfdCBnZnApCj4+PiDCoCB7Cj4+PiAtwqDCoMKgIHN0cnVjdCBkbWFfZmVuY2UgKmV4
Y2w7Cj4+PiArwqDCoMKgIHN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNvcjsKPj4+ICvCoMKgwqAg
c3RydWN0IGRtYV9mZW5jZSAqZjsKPj4+IMKgwqDCoMKgwqAgaW50IHJldCA9IDAsIHBlbmRpbmc7
Cj4+PiDCoMKgwqDCoMKgIGRlYnVnX2ZlbmNlX2Fzc2VydChmZW5jZSk7Cj4+PiDCoMKgwqDCoMKg
IG1pZ2h0X3NsZWVwX2lmKGdmcGZsYWdzX2FsbG93X2Jsb2NraW5nKGdmcCkpOwo+Pj4gLcKgwqDC
oCBpZiAod3JpdGUpIHsKPj4+IC3CoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZG1hX2ZlbmNlICoqc2hh
cmVkOwo+Pj4gLcKgwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGludCBjb3VudCwgaTsKPj4+IC0KPj4+
IC3CoMKgwqDCoMKgwqDCoCByZXQgPSBkbWFfcmVzdl9nZXRfZmVuY2VzKHJlc3YsICZleGNsLCAm
Y291bnQsICZzaGFyZWQpOwo+Pj4gLcKgwqDCoMKgwqDCoMKgIGlmIChyZXQpCj4+PiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+Pj4gLQo+Pj4gLcKgwqDCoMKgwqDCoMKgIGZv
ciAoaSA9IDA7IGkgPCBjb3VudDsgaSsrKSB7Cj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBp
ZiAoc2hhcmVkW2ldLT5vcHMgPT0gZXhjbHVkZSkKPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgY29udGludWU7Cj4+PiAtCj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwZW5k
aW5nID0gaTkxNV9zd19mZW5jZV9hd2FpdF9kbWFfZmVuY2UoZmVuY2UsCj4+PiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2hh
cmVkW2ldLAo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHRpbWVvdXQsCj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ2ZwKTsKPj4+IC3CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGlmIChwZW5kaW5nIDwgMCkgewo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCByZXQgPSBwZW5kaW5nOwo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBicmVhazsKPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH0KPj4+IC0KPj4+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldCB8PSBwZW5kaW5nOwo+Pj4gLcKgwqDCoMKgwqDCoMKg
IH0KPj4+IC0KPj4+IC3CoMKgwqDCoMKgwqDCoCBmb3IgKGkgPSAwOyBpIDwgY291bnQ7IGkrKykK
Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRtYV9mZW5jZV9wdXQoc2hhcmVkW2ldKTsKPj4+
IC3CoMKgwqDCoMKgwqDCoCBrZnJlZShzaGFyZWQpOwo+Pj4gLcKgwqDCoCB9IGVsc2Ugewo+Pj4g
LcKgwqDCoMKgwqDCoMKgIGV4Y2wgPSBkbWFfcmVzdl9nZXRfZXhjbF91bmxvY2tlZChyZXN2KTsK
Pj4+IC3CoMKgwqAgfQo+Pj4gLQo+Pj4gLcKgwqDCoCBpZiAocmV0ID49IDAgJiYgZXhjbCAmJiBl
eGNsLT5vcHMgIT0gZXhjbHVkZSkgewo+Pj4gLcKgwqDCoMKgwqDCoMKgIHBlbmRpbmcgPSBpOTE1
X3N3X2ZlbmNlX2F3YWl0X2RtYV9mZW5jZShmZW5jZSwKPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZXhjbCwKPj4+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdGltZW91dCwKPj4+
ICvCoMKgwqAgcmN1X3JlYWRfbG9jaygpOwo+Pj4gK8KgwqDCoCBkbWFfcmVzdl9pdGVyX2JlZ2lu
KCZjdXJzb3IsIHJlc3YsIHdyaXRlKTsKPj4+ICvCoMKgwqAgZG1hX3Jlc3ZfZm9yX2VhY2hfZmVu
Y2VfdW5sb2NrZWQoJmN1cnNvciwgZikgewo+Pj4gK8KgwqDCoMKgwqDCoMKgIHJjdV9yZWFkX3Vu
bG9jaygpOwo+Pj4gK8KgwqDCoMKgwqDCoMKgIHBlbmRpbmcgPSBpOTE1X3N3X2ZlbmNlX2F3YWl0
X2RtYV9mZW5jZShmZW5jZSwgZiwgdGltZW91dCwKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ2ZwKTsKPj4+IC3CoMKgwqDCoMKg
wqDCoCBpZiAocGVuZGluZyA8IDApCj4+PiArwqDCoMKgwqDCoMKgwqAgcmN1X3JlYWRfbG9jaygp
Owo+Pj4gK8KgwqDCoMKgwqDCoMKgIGlmIChwZW5kaW5nIDwgMCkgewo+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgcmV0ID0gcGVuZGluZzsKPj4+IC3CoMKgwqDCoMKgwqDCoCBlbHNlCj4+
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXQgfD0gcGVuZGluZzsKPj4+IC3CoMKgwqAgfQo+
Pj4gLQo+Pj4gLcKgwqDCoCBkbWFfZmVuY2VfcHV0KGV4Y2wpOwo+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgYnJlYWs7Cj4+PiArwqDCoMKgwqDCoMKgwqAgfQo+Pj4gK8KgwqDCoMKgwqDCoMKg
IHJldCB8PSBwZW5kaW5nOwo+Pj4gK8KgwqDCoCB9Cj4+PiArwqDCoMKgIGRtYV9yZXN2X2l0ZXJf
ZW5kKCZjdXJzb3IpOwo+Pj4gK8KgwqDCoCByY3VfcmVhZF91bmxvY2soKTsKPj4+IMKgwqDCoMKg
wqAgcmV0dXJuIHJldDsKPj4+IMKgIH0KPj4+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlz
dGluZm8vbGluYXJvLW1tLXNpZwo=
