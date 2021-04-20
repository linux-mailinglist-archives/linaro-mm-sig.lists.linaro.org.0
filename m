Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6DA3654AE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Apr 2021 10:59:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9D75B66833
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Apr 2021 08:59:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 89FEF6683A; Tue, 20 Apr 2021 08:59:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E719E66835;
	Tue, 20 Apr 2021 08:58:47 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E4BC666833
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Apr 2021 08:58:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C4F7366835; Tue, 20 Apr 2021 08:58:44 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com
 [209.85.218.44])
 by lists.linaro.org (Postfix) with ESMTPS id 4B58D66833
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Apr 2021 08:58:43 +0000 (UTC)
Received: by mail-ej1-f44.google.com with SMTP id n2so57073537ejy.7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Apr 2021 01:58:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=uoshV4Vtm4B5N1WQ6cX9wQ88a/iAdHUM/Ny6VzNB44I=;
 b=fkUG4NmfxgXj4X0DmpsiWpGsVIhq4a5wdfYrmSQUMupjQLVGqjTpLYpB+G54QDjU4E
 yHUGV2/iRlLOqE8k9snyx69RUqbTArIHDmLWLMz8RVIPgwV9v+w+lYcBL1GY6XdQcJpG
 z+hJ1XpmdNonnbD75xLU2F3Z6YUSse+x8ZqRzY9PQLesTov4o6xB8YqVS72hrcuPZLSl
 V9zVF1S+nawWivZCUVdlTxE/f8UHLJa8gz6KSKq+DFh8brh8p9bGOe6FmUdqPWdKLGWR
 dTlKv5UHWVvIJAftuF8UwmN9nJVEhSNFDzGLAJ8WA3TKt5jngldlJoddLO/tgroG63rq
 7LVw==
X-Gm-Message-State: AOAM533a08BbN8dcvm6eFiyDP3YPFL8bVVkOXWfB2D+Yg/4eNJqfNcFR
 r1TkW1kqzT1uruKK5TM0ZBiOrA==
X-Google-Smtp-Source: ABdhPJzm6dWSIDV4rK2bRNY0RMKV1Op02STXTUz+9aXCx93rVCfa/10482y1ttgQkF645qvSSm+6fA==
X-Received: by 2002:a17:906:b52:: with SMTP id
 v18mr26174703ejg.485.1618909122366; 
 Tue, 20 Apr 2021 01:58:42 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id dj7sm6374438edb.42.2021.04.20.01.58.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Apr 2021 01:58:41 -0700 (PDT)
Date: Tue, 20 Apr 2021 10:58:39 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Peter Enderborg <peter.enderborg@sony.com>
Message-ID: <YH6Xv00ddYfMA3Lg@phenom.ffwll.local>
Mail-Followup-To: Peter Enderborg <peter.enderborg@sony.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Alexey Dobriyan <adobriyan@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Muchun Song <songmuchun@bytedance.com>,
 Roman Gushchin <guro@fb.com>, Shakeel Butt <shakeelb@google.com>,
 Michal Hocko <mhocko@suse.com>, NeilBrown <neilb@suse.de>,
 Sami Tolvanen <samitolvanen@google.com>,
 Mike Rapoport <rppt@kernel.org>, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Matthew Wilcox <willy@infradead.org>
References: <20210417163835.25064-1-peter.enderborg@sony.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210417163835.25064-1-peter.enderborg@sony.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Michal Hocko <mhocko@suse.com>, Matthew Wilcox <willy@infradead.org>,
 NeilBrown <neilb@suse.de>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Alexey Dobriyan <adobriyan@gmail.com>,
 linaro-mm-sig@lists.linaro.org, Shakeel Butt <shakeelb@google.com>,
 Mike Rapoport <rppt@kernel.org>, Sami Tolvanen <samitolvanen@google.com>,
 Muchun Song <songmuchun@bytedance.com>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Roman Gushchin <guro@fb.com>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH v5] dma-buf: Add DmaBufTotal counter in
	meminfo
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

T24gU2F0LCBBcHIgMTcsIDIwMjEgYXQgMDY6Mzg6MzVQTSArMDIwMCwgUGV0ZXIgRW5kZXJib3Jn
IHdyb3RlOgo+IFRoaXMgYWRkcyBhIHRvdGFsIHVzZWQgZG1hLWJ1ZiBtZW1vcnkuIERldGFpbHMK
PiBjYW4gYmUgZm91bmQgaW4gZGVidWdmcywgaG93ZXZlciBpdCBpcyBub3QgZm9yIGV2ZXJ5b25l
Cj4gYW5kIG5vdCBhbHdheXMgYXZhaWxhYmxlLiBkbWEtYnVmIGFyZSBpbmRpcmVjdCBhbGxvY2F0
ZWQgYnkKPiB1c2Vyc3BhY2UuIFNvIHdpdGggdGhpcyB2YWx1ZSB3ZSBjYW4gbW9uaXRvciBhbmQg
ZGV0ZWN0Cj4gdXNlcnNwYWNlIGFwcGxpY2F0aW9ucyB0aGF0IGhhdmUgcHJvYmxlbXMuCj4gCj4g
U2lnbmVkLW9mZi1ieTogUGV0ZXIgRW5kZXJib3JnIDxwZXRlci5lbmRlcmJvcmdAc29ueS5jb20+
CgpTbyB0aGVyZSBoYXZlIGJlZW4gdG9ucyBvZiBkaXNjdXNzaW9ucyBhcm91bmQgaG93IHRvIHRy
YWNrIGRtYS1idWYgYW5kCndoeSwgYW5kIEkgcmVhbGx5IG5lZWQgdG8gdW5kZXJzdGFuZCB0aGUg
dXNlLWNhc3MgaGVyZSBmaXJzdCBJIHRoaW5rLiBwcm9jCnVhcGkgaXMgYXMgbXVjaCBmb3JldmVy
IGFzIGFueXRoaW5nIGVsc2UsIGFuZCBkZXBlbmRpbmcgd2hhdCB5b3UncmUgZG9pbmcKdGhpcyBk
b2Vzbid0IG1ha2UgYW55IHNlbnNlIGF0IGFsbDoKCi0gb24gbW9zdCBsaW51eCBzeXN0ZW1zIGRt
YS1idWYgYXJlIG9ubHkgaW5zdGFudGlhdGVkIGZvciBzaGFyZWQgYnVmZmVyLgogIFNvIHRoZXJl
IHRoaXMgZ2l2ZXMgeW91IGEgZmFpcmx5IG1lYW5pbmdsZXNzIG51bWJlciBhbmQgbm90IGFueXRo
aW5nCiAgcmVmbGVjdGluZyBncHUgbWVtb3J5IHVzYWdlIGF0IGFsbC4KCi0gb24gQW5kcm9pZCBh
bGwgYnVmZmVycyBhcmUgYWxsb2NhdGVkIHRocm91Z2ggZG1hLWJ1ZiBhZmFpay4gQnV0IHRoZXJl
CiAgd2UndmUgcmVjZW50bHkgaGFkIHNvbWUgZGlzY3Vzc2lvbnMgYWJvdXQgaG93IGV4YWN0bHkg
d2Ugc2hvdWxkIHRyYWNrCiAgYWxsIHRoaXMsIGFuZCB0aGUgY29uY2x1c2lvbiB3YXMgdGhhdCBt
b3N0IG9mIHRoaXMgc2hvdWxkIGJlIHNvbHZlZCBieQogIGNncm91cHMgbG9uZyB0ZXJtLiBTbyBp
ZiB0aGlzIGlzIGZvciBBbmRyb2lkLCB0aGVuIEkgZG9uJ3QgdGhpbmsgYWRkaW5nCiAgcmFuZG9t
IHF1aWNrIHN0b3AtZ2FwcyB0byB1cHN0cmVhbSBpcyBhIGdvb2QgaWRlYSAoYmVjYXVzZSBpdCdz
IGEgcHJldHR5CiAgbG9uZyBsaXN0IG9mIHBhdGNoZXMgdGhhdCBoYXZlIGNvbWUgdXAgb24gdGhp
cykuCgpTbyB3aGF0IGlzIHRoaXMgZm9yPwotRGFuaWVsCgo+IC0tLQo+ICBkcml2ZXJzL2RtYS1i
dWYvZG1hLWJ1Zi5jIHwgMTIgKysrKysrKysrKysrCj4gIGZzL3Byb2MvbWVtaW5mby5jICAgICAg
ICAgfCAgNSArKysrLQo+ICBpbmNsdWRlL2xpbnV4L2RtYS1idWYuaCAgIHwgIDEgKwo+ICAzIGZp
bGVzIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVm
LmMKPiBpbmRleCBmMjY0YjcwYzM4M2UuLjRkYzM3Y2Q0MjkzYiAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+
IEBAIC0zNyw2ICszNyw3IEBAIHN0cnVjdCBkbWFfYnVmX2xpc3Qgewo+ICB9Owo+ICAKPiAgc3Rh
dGljIHN0cnVjdCBkbWFfYnVmX2xpc3QgZGJfbGlzdDsKPiArc3RhdGljIGF0b21pY19sb25nX3Qg
ZG1hX2J1Zl9nbG9iYWxfYWxsb2NhdGVkOwo+ICAKPiAgc3RhdGljIGNoYXIgKmRtYWJ1ZmZzX2Ru
YW1lKHN0cnVjdCBkZW50cnkgKmRlbnRyeSwgY2hhciAqYnVmZmVyLCBpbnQgYnVmbGVuKQo+ICB7
Cj4gQEAgLTc5LDYgKzgwLDcgQEAgc3RhdGljIHZvaWQgZG1hX2J1Zl9yZWxlYXNlKHN0cnVjdCBk
ZW50cnkgKmRlbnRyeSkKPiAgCWlmIChkbWFidWYtPnJlc3YgPT0gKHN0cnVjdCBkbWFfcmVzdiAq
KSZkbWFidWZbMV0pCj4gIAkJZG1hX3Jlc3ZfZmluaShkbWFidWYtPnJlc3YpOwo+ICAKPiArCWF0
b21pY19sb25nX3N1YihkbWFidWYtPnNpemUsICZkbWFfYnVmX2dsb2JhbF9hbGxvY2F0ZWQpOwo+
ICAJbW9kdWxlX3B1dChkbWFidWYtPm93bmVyKTsKPiAgCWtmcmVlKGRtYWJ1Zi0+bmFtZSk7Cj4g
IAlrZnJlZShkbWFidWYpOwo+IEBAIC01ODYsNiArNTg4LDcgQEAgc3RydWN0IGRtYV9idWYgKmRt
YV9idWZfZXhwb3J0KGNvbnN0IHN0cnVjdCBkbWFfYnVmX2V4cG9ydF9pbmZvICpleHBfaW5mbykK
PiAgCW11dGV4X2xvY2soJmRiX2xpc3QubG9jayk7Cj4gIAlsaXN0X2FkZCgmZG1hYnVmLT5saXN0
X25vZGUsICZkYl9saXN0LmhlYWQpOwo+ICAJbXV0ZXhfdW5sb2NrKCZkYl9saXN0LmxvY2spOwo+
ICsJYXRvbWljX2xvbmdfYWRkKGRtYWJ1Zi0+c2l6ZSwgJmRtYV9idWZfZ2xvYmFsX2FsbG9jYXRl
ZCk7Cj4gIAo+ICAJcmV0dXJuIGRtYWJ1ZjsKPiAgCj4gQEAgLTEzNDYsNiArMTM0OSwxNSBAQCB2
b2lkIGRtYV9idWZfdnVubWFwKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBkbWFfYnVm
X21hcCAqbWFwKQo+ICB9Cj4gIEVYUE9SVF9TWU1CT0xfR1BMKGRtYV9idWZfdnVubWFwKTsKPiAg
Cj4gKy8qKgo+ICsgKiBkbWFfYnVmX2FsbG9jYXRlZF9wYWdlcyAtIFJldHVybiB0aGUgdXNlZCBu
ciBvZiBwYWdlcwo+ICsgKiBhbGxvY2F0ZWQgZm9yIGRtYS1idWYKPiArICovCj4gK2xvbmcgZG1h
X2J1Zl9hbGxvY2F0ZWRfcGFnZXModm9pZCkKPiArewo+ICsJcmV0dXJuIGF0b21pY19sb25nX3Jl
YWQoJmRtYV9idWZfZ2xvYmFsX2FsbG9jYXRlZCkgPj4gUEFHRV9TSElGVDsKPiArfQo+ICsKPiAg
I2lmZGVmIENPTkZJR19ERUJVR19GUwo+ICBzdGF0aWMgaW50IGRtYV9idWZfZGVidWdfc2hvdyhz
dHJ1Y3Qgc2VxX2ZpbGUgKnMsIHZvaWQgKnVudXNlZCkKPiAgewo+IGRpZmYgLS1naXQgYS9mcy9w
cm9jL21lbWluZm8uYyBiL2ZzL3Byb2MvbWVtaW5mby5jCj4gaW5kZXggNmZhNzYxYzljYzc4Li5j
Y2M3YzQwYzhkYjcgMTAwNjQ0Cj4gLS0tIGEvZnMvcHJvYy9tZW1pbmZvLmMKPiArKysgYi9mcy9w
cm9jL21lbWluZm8uYwo+IEBAIC0xNiw2ICsxNiw3IEBACj4gICNpZmRlZiBDT05GSUdfQ01BCj4g
ICNpbmNsdWRlIDxsaW51eC9jbWEuaD4KPiAgI2VuZGlmCj4gKyNpbmNsdWRlIDxsaW51eC9kbWEt
YnVmLmg+Cj4gICNpbmNsdWRlIDxhc20vcGFnZS5oPgo+ICAjaW5jbHVkZSAiaW50ZXJuYWwuaCIK
PiAgCj4gQEAgLTE0NSw3ICsxNDYsOSBAQCBzdGF0aWMgaW50IG1lbWluZm9fcHJvY19zaG93KHN0
cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqdikKPiAgCXNob3dfdmFsX2tiKG0sICJDbWFGcmVlOiAg
ICAgICAgIiwKPiAgCQkgICAgZ2xvYmFsX3pvbmVfcGFnZV9zdGF0ZShOUl9GUkVFX0NNQV9QQUdF
UykpOwo+ICAjZW5kaWYKPiAtCj4gKyNpZmRlZiBDT05GSUdfRE1BX1NIQVJFRF9CVUZGRVIKPiAr
CXNob3dfdmFsX2tiKG0sICJEbWFCdWZUb3RhbDogICAgIiwgZG1hX2J1Zl9hbGxvY2F0ZWRfcGFn
ZXMoKSk7Cj4gKyNlbmRpZgo+ICAJaHVnZXRsYl9yZXBvcnRfbWVtaW5mbyhtKTsKPiAgCj4gIAlh
cmNoX3JlcG9ydF9tZW1pbmZvKG0pOwo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1i
dWYuaCBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oCj4gaW5kZXggZWZkYzU2YjlkOTVmLi41YjA1
ODE2YmQyY2QgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgKPiArKysgYi9p
bmNsdWRlL2xpbnV4L2RtYS1idWYuaAo+IEBAIC01MDcsNCArNTA3LDUgQEAgaW50IGRtYV9idWZf
bW1hcChzdHJ1Y3QgZG1hX2J1ZiAqLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKiwKPiAgCQkgdW5z
aWduZWQgbG9uZyk7Cj4gIGludCBkbWFfYnVmX3ZtYXAoc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwg
c3RydWN0IGRtYV9idWZfbWFwICptYXApOwo+ICB2b2lkIGRtYV9idWZfdnVubWFwKHN0cnVjdCBk
bWFfYnVmICpkbWFidWYsIHN0cnVjdCBkbWFfYnVmX21hcCAqbWFwKTsKPiArbG9uZyBkbWFfYnVm
X2FsbG9jYXRlZF9wYWdlcyh2b2lkKTsKPiAgI2VuZGlmIC8qIF9fRE1BX0JVRl9IX18gKi8KPiAt
LSAKPiAyLjE3LjEKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9kcmktZGV2ZWwKCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBD
b3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
