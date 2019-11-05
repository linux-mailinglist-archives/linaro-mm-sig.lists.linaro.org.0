Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B526EFBDC
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Nov 2019 11:54:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 74E7A618E4
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Nov 2019 10:54:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6822761947; Tue,  5 Nov 2019 10:54:10 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SUBJ_OBFU_PUNCT_FEW,
	SUBJ_OBFU_PUNCT_MANY autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7929E61951;
	Tue,  5 Nov 2019 10:53:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8BCE2618E4
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Nov 2019 10:52:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7684C61951; Tue,  5 Nov 2019 10:52:58 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by lists.linaro.org (Postfix) with ESMTPS id 5B869618E4
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Nov 2019 10:52:56 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id a15so20761992wrf.9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Nov 2019 02:52:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=TKdpVF6TwvbB8GcetexoU9XGuRiB74mVvMztmY2qmqE=;
 b=cZqISU7et2S7txCJgqd42loJ88Bco8yAgsnQb4dCbUyu4BYTqqNhIrNDYinMgQp37A
 voVr3Xs6AwUl5tBVC+4XRRPLfQ02mLJB4Zjf357mdlSFBFWdduxr8tjm5DuZBGm+vIQ7
 36tyYOEgQluiDHODQz+W3C8g94KAFcG3bF1e0LkWYDzdflf9dnIfeog6didw05JXBlQd
 BWV4Juagzlx81zKD2ZYghhVho11BmMWfWpcXiLHtATcu9b/IvArypthMq8zFLbyXMsOP
 6ER8EY6g1ORL31G/I0iCoM1QlRMMuRTfjAvrNWLMR0F7Nt0J3rSNckkGdVonZ8acqklC
 ay/A==
X-Gm-Message-State: APjAAAWzHkWOsCnc5euP39aHQ4cv8otM3i+p0HZPoXcmMeR30wJ+TreM
 bVM/y2DUzsfMM92w4Q9LtJZGqg==
X-Google-Smtp-Source: APXvYqzVjJg/jeudj/TNfMBZc+K5TN26tQRpEYyYpCfKwy7Z6t1j5W3/5nw0wWhx7qCr4Pp9TdCCkw==
X-Received: by 2002:adf:e78c:: with SMTP id n12mr12053221wrm.94.1572951175402; 
 Tue, 05 Nov 2019 02:52:55 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id d11sm24319677wrf.80.2019.11.05.02.52.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 02:52:54 -0800 (PST)
Date: Tue, 5 Nov 2019 11:52:52 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <20191105105252.GE10326@phenom.ffwll.local>
References: <20191029104049.9011-1-christian.koenig@amd.com>
 <20191029104049.9011-6-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029104049.9011-6-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.2.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 5/5] drm/amdgpu: implement
	amdgpu_gem_prime_move_notify
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

T24gVHVlLCBPY3QgMjksIDIwMTkgYXQgMTE6NDA6NDlBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBJbXBsZW1lbnQgdGhlIGltcG9ydGVyIHNpZGUgb2YgdW5waW5uZWQgRE1BLWJ1
ZiBoYW5kbGluZy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV9kbWFfYnVmLmMgfCAyOCArKysrKysrKysrKysrKysrKysrKy0KPiAgZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5jICB8ICA2ICsrKysrCj4gIDIgZmlsZXMgY2hh
bmdlZCwgMzMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jIGIvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYwo+IGluZGV4IDM2MjljZmU1M2FhZC4uYWYz
OTU1M2M1MWFkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV9kbWFfYnVmLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1h
X2J1Zi5jCj4gQEAgLTQ1Niw3ICs0NTYsMzMgQEAgYW1kZ3B1X2RtYV9idWZfY3JlYXRlX29iaihz
dHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1ZikKPiAgCXJldHVy
biBFUlJfUFRSKHJldCk7Cj4gIH0KPiAgCj4gKy8qKgo+ICsgKiBhbWRncHVfZG1hX2J1Zl9tb3Zl
X25vdGlmeSAtICZhdHRhY2gubW92ZV9ub3RpZnkgaW1wbGVtZW50YXRpb24KPiArICoKPiArICog
QGF0dGFjaDogdGhlIERNQS1idWYgYXR0YWNobWVudAo+ICsgKgo+ICsgKiBJbnZhbGlkYXRlIHRo
ZSBETUEtYnVmIGF0dGFjaG1lbnQsIG1ha2luZyBzdXJlIHRoYXQgdGhlIHdlIHJlLWNyZWF0ZSB0
aGUKPiArICogbWFwcGluZyBiZWZvcmUgdGhlIG5leHQgdXNlLgo+ICsgKi8KPiArc3RhdGljIHZv
aWQKPiArYW1kZ3B1X2RtYV9idWZfbW92ZV9ub3RpZnkoc3RydWN0IGRtYV9idWZfYXR0YWNobWVu
dCAqYXR0YWNoKQo+ICt7Cj4gKwlzdHJ1Y3QgdHRtX29wZXJhdGlvbl9jdHggY3R4ID0geyBmYWxz
ZSwgZmFsc2UgfTsKPiArCXN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqID0gYXR0YWNoLT5pbXBv
cnRlcl9wcml2Owo+ICsJc3RydWN0IGFtZGdwdV9ibyAqYm8gPSBnZW1fdG9fYW1kZ3B1X2JvKG9i
aik7Cj4gKwlzdHJ1Y3QgdHRtX3BsYWNlbWVudCBwbGFjZW1lbnQgPSB7fTsKPiArCWludCByOwo+
ICsKPiArCWlmIChiby0+dGJvLm1lbS5tZW1fdHlwZSA9PSBUVE1fUExfU1lTVEVNKQo+ICsJCXJl
dHVybjsKPiArCj4gKwlyID0gdHRtX2JvX3ZhbGlkYXRlKCZiby0+dGJvLCAmcGxhY2VtZW50LCAm
Y3R4KTsKPiArCWlmIChyKQo+ICsJCURSTV9FUlJPUigiRmFpbGVkIHRvIGludmFsaWRhdGUgRE1B
LWJ1ZiBpbXBvcnQgKCVkKSlcbiIsIHIpOwoKV2hlcmUgZG8geW91IHVwZGF0ZSBwYWdldGFibGVz
PwoKVGhlIG9ubHkgdGhpbmcgSSd2ZSBmb3VuZCBpcyBpbiB0aGUgYW1kZ3B1IENTIGNvZGUsIHdo
aWNoIGlzIHdheSB0byBsYXRlCmZvciB0aGlzIHN0dWZmIGhlcmUuIFBsdXMgVFRNIGRvZXNuJ3Qg
aGFuZGxlIHZpcnR1YWwgbWVtb3J5IGF0IGFsbCAoYXNpZGUKZnJvbSB0aGUgZ2FydCB0dCksIHNv
IGNsZWFybHkgeW91IG5lZWQgdG8gY2FsbCBpbnRvIGFtZGdwdSBjb2RlIHNvbWV3aGVyZQpmb3Ig
dGhpcy4gQnV0IEkgZGlkbid0IGZpbmQgaXQsIG5laXRoZXIgaW4geW91ciAtPm1vdmVfbm90aWZ5
IG5vciB0aGUKLT5tb3ZlIGNhbGxiYWNrIGluIHR0bV9ib19kcml2ZXIuCgpIb3cgZG9lcyB0aGlz
IHdvcms/Ci1EYW5pZWwKCj4gK30KPiArCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9h
dHRhY2hfb3BzIGFtZGdwdV9kbWFfYnVmX2F0dGFjaF9vcHMgPSB7Cj4gKwkubW92ZV9ub3RpZnkg
PSBhbWRncHVfZG1hX2J1Zl9tb3ZlX25vdGlmeQo+ICB9Owo+ICAKPiAgLyoqCj4gQEAgLTQ5Miw3
ICs1MTgsNyBAQCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKmFtZGdwdV9nZW1fcHJpbWVfaW1wb3J0
KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4gIAkJcmV0dXJuIG9iajsKPiAgCj4gIAlhdHRhY2gg
PSBkbWFfYnVmX2R5bmFtaWNfYXR0YWNoKGRtYV9idWYsIGRldi0+ZGV2LAo+IC0JCQkJCSZhbWRn
cHVfZG1hX2J1Zl9hdHRhY2hfb3BzLCBOVUxMKTsKPiArCQkJCQkmYW1kZ3B1X2RtYV9idWZfYXR0
YWNoX29wcywgb2JqKTsKPiAgCWlmIChJU19FUlIoYXR0YWNoKSkgewo+ICAJCWRybV9nZW1fb2Jq
ZWN0X3B1dChvYmopOwo+ICAJCXJldHVybiBFUlJfQ0FTVChhdHRhY2gpOwo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfb2JqZWN0LmMgYi9kcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfb2JqZWN0LmMKPiBpbmRleCBhYzc3NmQyNjIwZWIuLmNm
YTQ2MzQxYzlhNyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfb2JqZWN0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfb2Jq
ZWN0LmMKPiBAQCAtODYxLDYgKzg2MSw5IEBAIGludCBhbWRncHVfYm9fcGluX3Jlc3RyaWN0ZWQo
c3RydWN0IGFtZGdwdV9ibyAqYm8sIHUzMiBkb21haW4sCj4gIAkJcmV0dXJuIDA7Cj4gIAl9Cj4g
IAo+ICsJaWYgKGJvLT50Ym8uYmFzZS5pbXBvcnRfYXR0YWNoKQo+ICsJCWRtYV9idWZfcGluKGJv
LT50Ym8uYmFzZS5pbXBvcnRfYXR0YWNoKTsKPiArCj4gIAliby0+ZmxhZ3MgfD0gQU1ER1BVX0dF
TV9DUkVBVEVfVlJBTV9DT05USUdVT1VTOwo+ICAJLyogZm9yY2UgdG8gcGluIGludG8gdmlzaWJs
ZSB2aWRlbyByYW0gKi8KPiAgCWlmICghKGJvLT5mbGFncyAmIEFNREdQVV9HRU1fQ1JFQVRFX05P
X0NQVV9BQ0NFU1MpKQo+IEBAIC05NDQsNiArOTQ3LDkgQEAgaW50IGFtZGdwdV9ib191bnBpbihz
dHJ1Y3QgYW1kZ3B1X2JvICpibykKPiAgCj4gIAlhbWRncHVfYm9fc3VidHJhY3RfcGluX3NpemUo
Ym8pOwo+ICAKPiArCWlmIChiby0+dGJvLmJhc2UuaW1wb3J0X2F0dGFjaCkKPiArCQlkbWFfYnVm
X3VucGluKGJvLT50Ym8uYmFzZS5pbXBvcnRfYXR0YWNoKTsKPiArCj4gIAlmb3IgKGkgPSAwOyBp
IDwgYm8tPnBsYWNlbWVudC5udW1fcGxhY2VtZW50OyBpKyspIHsKPiAgCQliby0+cGxhY2VtZW50
c1tpXS5scGZuID0gMDsKPiAgCQliby0+cGxhY2VtZW50c1tpXS5mbGFncyAmPSB+VFRNX1BMX0ZM
QUdfTk9fRVZJQ1Q7Cj4gLS0gCj4gMi4xNy4xCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBF
bmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGlu
YXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
