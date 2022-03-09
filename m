Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D6A4EAD07
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 14:21:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5B7E43EBFD
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 12:21:31 +0000 (UTC)
Received: from mail-yw1-f201.google.com (mail-yw1-f201.google.com [209.85.128.201])
	by lists.linaro.org (Postfix) with ESMTPS id DCC0F3EEA1
	for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Mar 2022 16:52:48 +0000 (UTC)
Received: by mail-yw1-f201.google.com with SMTP id 00721157ae682-2d726bd83a2so18909537b3.20
        for <linaro-mm-sig@lists.linaro.org>; Wed, 09 Mar 2022 08:52:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:content-transfer-encoding;
        bh=V8vMjTnKNpMlnc7JqoQhhcwCYCICGfVTjA11ueJBqJY=;
        b=HPhBJpTBiJVYDhNj0DZQIrh2V35TDbkma5Iio+WXF/hcMekPxUMRND2g0CCX8In7eA
         LEUpnnJ+An6CQt91VMdWJ16FK8gQvFAyqTsa5rlG5AWdns4o+hy7+0OojxnhgPcTuenF
         BMnLv3wL46KC+ysjzZ76R5d/tGOpuWkWCWCPvMAfXwR0a5KK3XjpjLwL9pQFigkgD89h
         UfwDU4EeBZ+AuUjNHIDB5TQ3ZOrtGFi86NY5EeNgywb7PE5VH443fnkWqKIiup1Y0udy
         R7MVYYHFJitKmNj3Z9u+ZFiGhMd6bk7xZU88I9EiTT+qF25ldxx/Q3auo1GI4V9pSZKP
         UyXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:content-transfer-encoding;
        bh=V8vMjTnKNpMlnc7JqoQhhcwCYCICGfVTjA11ueJBqJY=;
        b=iDNBWi9kqk63/3XfNKHK54ztWCDiqjfNEUf+O64Uv3ckMAiU1CRkzy7ny+2iCMQpOF
         i3jzFS/Q+w3R+Z4M9n3JlqSCF25crRDrEYXaRMgVVH3GmmKA/GMgsfpWrZIohPFRTKhn
         9nVNwMERZ64VjZ5XIdUZ6E8xbLVfcrYKoYe6PEkE3GLi44PZYgfOMwTwFRzKrU2ozEPY
         2L5n0Fig79WfvmdaRBGiKQUVcpdXynlK/Roa6DF3Ss1gz4MgKdYMLH841bxmSsydrgNW
         XOMYro97Pz+OeRiktYkHNI/iZX1nnxw++tswYTAJVfbycJUqeUpJEeTwsCFOTvRsBLcG
         5ZOQ==
X-Gm-Message-State: AOAM530XEAptEcB623WNJCxhzwf8K6ydbs3zUODMj+7oXg7OQAxk0f4e
	UofT+Z5Z5DCAhCNH+CISS/G7YaN8jFFGKxk=
X-Google-Smtp-Source: ABdhPJz9YUAclnREKPfkUSw/YVlrcGlYfdaexMLMRAzjJT1CtoYDbmyjdA8pza54fHB/e3zequa24JlX1KWu3NI=
X-Received: from tj2.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:187])
 (user=tjmercier job=sendgmr) by 2002:a81:38c6:0:b0:2d7:ee4f:797b with SMTP id
 f189-20020a8138c6000000b002d7ee4f797bmr650786ywa.14.1646844768454; Wed, 09
 Mar 2022 08:52:48 -0800 (PST)
Date: Wed,  9 Mar 2022 16:52:15 +0000
In-Reply-To: <20220309165222.2843651-1-tjmercier@google.com>
Message-Id: <20220309165222.2843651-6-tjmercier@google.com>
Mime-Version: 1.0
References: <20220309165222.2843651-1-tjmercier@google.com>
X-Mailer: git-send-email 2.35.1.616.g0bdcbb4464-goog
From: "T.J. Mercier" <tjmercier@google.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"=?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?=" <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
	Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>,
	Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	"=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>,
	Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>,
	Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>,
	Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>,
	Johannes Weiner <hannes@cmpxchg.org>, Shuah Khan <shuah@kernel.org>
X-MailFrom: 3YNsoYgkKDdEG691Ez51E3BB381.zB985AxEB-99-F5385FGF.85AxEB.BE3@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: TKC6E66N6TTFJK3HTLSXBRBGJUU2CMBX
X-Message-ID-Hash: TKC6E66N6TTFJK3HTLSXBRBGJUU2CMBX
X-Mailman-Approved-At: Tue, 29 Mar 2022 12:20:57 +0000
CC: kaleshsingh@google.com, Kenny.Ho@amd.com, "T.J. Mercier" <tjmercier@google.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, linux-kselftest@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC v3 5/8] dmabuf: Add gpu cgroup charge transfer function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TKC6E66N6TTFJK3HTLSXBRBGJUU2CMBX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogSHJpZHlhIFZhbHNhcmFqdSA8aHJpZHlhQGdvb2dsZS5jb20+DQoNClRoZSBkbWFfYnVm
X2NoYXJnZV90cmFuc2ZlciBmdW5jdGlvbiBwcm92aWRlcyBhIHdheSBmb3IgcHJvY2Vzc2VzIHRv
DQp0cmFuc2ZlciBjaGFyZ2Ugb2YgYSBidWZmZXIgdG8gYSBkaWZmZXJlbnQgcHJvY2Vzcy4gVGhp
cyBpcyBlc3NlbnRpYWwNCmZvciB0aGUgY2FzZXMgd2hlcmUgYSBjZW50cmFsIGFsbG9jYXRvciBw
cm9jZXNzIGRvZXMgYWxsb2NhdGlvbnMgZm9yDQp2YXJpb3VzIHN1YnN5c3RlbXMsIGhhbmRzIG92
ZXIgdGhlIGZkIHRvIHRoZSBjbGllbnQgd2hvIHJlcXVlc3RlZCB0aGUNCm1lbW9yeSBhbmQgZHJv
cHMgYWxsIHJlZmVyZW5jZXMgdG8gdGhlIGFsbG9jYXRlZCBtZW1vcnkuDQoNClNpZ25lZC1vZmYt
Ynk6IEhyaWR5YSBWYWxzYXJhanUgPGhyaWR5YUBnb29nbGUuY29tPg0KU2lnbmVkLW9mZi1ieTog
VC5KLiBNZXJjaWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4NCg0KLS0tDQp2MyBjaGFuZ2VzDQpV
c2UgbW9yZSBjb21tb24gZHVhbCBhdXRob3IgY29tbWl0IG1lc3NhZ2UgZm9ybWF0IHBlciBKb2hu
IFN0dWx0ei4NCg0KdjIgY2hhbmdlcw0KTW92ZSBkbWEtYnVmIGNncm91cCBjaGFyZ2UgdHJhbnNm
ZXIgZnJvbSBhIGRtYV9idWZfb3AgZGVmaW5lZCBieSBldmVyeQ0KaGVhcCB0byBhIHNpbmdsZSBk
bWEtYnVmIGZ1bmN0aW9uIGZvciBhbGwgaGVhcHMgcGVyIERhbmllbCBWZXR0ZXIgYW5kDQpDaHJp
c3RpYW4gS8O2bmlnLg0KLS0tDQogZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDQ4ICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0KIGluY2x1ZGUvbGludXgvZG1hLWJ1
Zi5oICAgfCAgMiArKw0KIDIgZmlsZXMgY2hhbmdlZCwgNTAgaW5zZXJ0aW9ucygrKQ0KDQpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmMNCmluZGV4IDgzZDBkMWI5MTU0Ny4uNTVlMWI5ODJmODQwIDEwMDY0NA0KLS0tIGEvZHJp
dmVycy9kbWEtYnVmL2RtYS1idWYuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0K
QEAgLTEzNzQsNiArMTM3NCw1NCBAQCB2b2lkIGRtYV9idWZfdnVubWFwKHN0cnVjdCBkbWFfYnVm
ICpkbWFidWYsIHN0cnVjdCBkbWFfYnVmX21hcCAqbWFwKQ0KIH0NCiBFWFBPUlRfU1lNQk9MX05T
X0dQTChkbWFfYnVmX3Z1bm1hcCwgRE1BX0JVRik7DQogDQorLyoqDQorICogZG1hX2J1Zl9jaGFy
Z2VfdHJhbnNmZXIgLSBDaGFuZ2UgdGhlIEdQVSBjZ3JvdXAgdG8gd2hpY2ggdGhlIHByb3ZpZGVk
IGRtYV9idWYNCisgKiBpcyBjaGFyZ2VkLg0KKyAqIEBkbWFidWY6CVtpbl0JYnVmZmVyIHdob3Nl
IGNoYXJnZSB3aWxsIGJlIG1pZ3JhdGVkIHRvIGEgZGlmZmVyZW50IEdQVQ0KKyAqCQkJY2dyb3Vw
DQorICogQGdwdWNnOglbaW5dCXRoZSBkZXN0aW5hdGlvbiBHUFUgY2dyb3VwIGZvciBkbWFidWYn
cyBjaGFyZ2UNCisgKg0KKyAqIE9ubHkgdGFza3MgdGhhdCBiZWxvbmcgdG8gdGhlIHNhbWUgY2dy
b3VwIHRoZSBidWZmZXIgaXMgY3VycmVudGx5IGNoYXJnZWQgdG8NCisgKiBtYXkgY2FsbCB0aGlz
IGZ1bmN0aW9uLCBvdGhlcndpc2UgaXQgd2lsbCByZXR1cm4gLUVQRVJNLg0KKyAqDQorICogUmV0
dXJucyAwIG9uIHN1Y2Nlc3MsIG9yIGEgbmVnYXRpdmUgZXJybm8gY29kZSBvdGhlcndpc2UuDQor
ICovDQoraW50IGRtYV9idWZfY2hhcmdlX3RyYW5zZmVyKHN0cnVjdCBkbWFfYnVmICpkbWFidWYs
IHN0cnVjdCBncHVjZyAqZ3B1Y2cpDQorew0KKyNpZmRlZiBDT05GSUdfQ0dST1VQX0dQVQ0KKwlz
dHJ1Y3QgZ3B1Y2cgKmN1cnJlbnRfZ3B1Y2c7DQorCWludCByZXQgPSAwOw0KKw0KKwkvKg0KKwkg
KiBWZXJpZnkgdGhhdCB0aGUgY2dyb3VwIG9mIHRoZSBwcm9jZXNzIHJlcXVlc3RpbmcgdGhlIHRy
YW5zZmVyIGlzIHRoZQ0KKwkgKiBzYW1lIGFzIHRoZSBvbmUgdGhlIGJ1ZmZlciBpcyBjdXJyZW50
bHkgY2hhcmdlZCB0by4NCisJICovDQorCWN1cnJlbnRfZ3B1Y2cgPSBncHVjZ19nZXQoY3VycmVu
dCk7DQorCW11dGV4X2xvY2soJmRtYWJ1Zi0+bG9jayk7DQorCWlmIChjdXJyZW50X2dwdWNnICE9
IGRtYWJ1Zi0+Z3B1Y2cpIHsNCisJCXJldCA9IC1FUEVSTTsNCisJCWdvdG8gZXJyOw0KKwl9DQor
DQorCXJldCA9IGdwdWNnX3RyeV9jaGFyZ2UoZ3B1Y2csIGRtYWJ1Zi0+Z3B1Y2dfZGV2LCBkbWFi
dWYtPnNpemUpOw0KKwlpZiAocmV0KQ0KKwkJZ290byBlcnI7DQorDQorCWRtYWJ1Zi0+Z3B1Y2cg
PSBncHVjZzsNCisNCisJLyogdW5jaGFyZ2UgdGhlIGJ1ZmZlciBmcm9tIHRoZSBjZ3JvdXAgaXQn
cyBjdXJyZW50bHkgY2hhcmdlZCB0by4gKi8NCisJZ3B1Y2dfdW5jaGFyZ2UoY3VycmVudF9ncHVj
ZywgZG1hYnVmLT5ncHVjZ19kZXYsIGRtYWJ1Zi0+c2l6ZSk7DQorDQorZXJyOg0KKwltdXRleF91
bmxvY2soJmRtYWJ1Zi0+bG9jayk7DQorCWdwdWNnX3B1dChjdXJyZW50X2dwdWNnKTsNCisJcmV0
dXJuIHJldDsNCisjZWxzZQ0KKwlyZXR1cm4gMDsNCisjZW5kaWYgLyogQ09ORklHX0NHUk9VUF9H
UFUgKi8NCit9DQorRVhQT1JUX1NZTUJPTF9OU19HUEwoZG1hX2J1Zl9jaGFyZ2VfdHJhbnNmZXIs
IERNQV9CVUYpOw0KKw0KICNpZmRlZiBDT05GSUdfREVCVUdfRlMNCiBzdGF0aWMgaW50IGRtYV9i
dWZfZGVidWdfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKnMsIHZvaWQgKnVudXNlZCkNCiB7DQpkaWZm
IC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYu
aA0KaW5kZXggNzQyZjI5YzNkYWFmLi44NWM5NDBjMDg4NjcgMTAwNjQ0DQotLS0gYS9pbmNsdWRl
L2xpbnV4L2RtYS1idWYuaA0KKysrIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCkBAIC02NDYs
NCArNjQ2LDYgQEAgaW50IGRtYV9idWZfbW1hcChzdHJ1Y3QgZG1hX2J1ZiAqLCBzdHJ1Y3Qgdm1f
YXJlYV9zdHJ1Y3QgKiwNCiAJCSB1bnNpZ25lZCBsb25nKTsNCiBpbnQgZG1hX2J1Zl92bWFwKHN0
cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBkbWFfYnVmX21hcCAqbWFwKTsNCiB2b2lkIGRt
YV9idWZfdnVubWFwKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBkbWFfYnVmX21hcCAq
bWFwKTsNCisNCitpbnQgZG1hX2J1Zl9jaGFyZ2VfdHJhbnNmZXIoc3RydWN0IGRtYV9idWYgKmRt
YWJ1Ziwgc3RydWN0IGdwdWNnICpncHVjZyk7DQogI2VuZGlmIC8qIF9fRE1BX0JVRl9IX18gKi8N
Ci0tIA0KMi4zNS4xLjYxNi5nMGJkY2JiNDQ2NC1nb29nDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
