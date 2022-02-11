Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E01954B806D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 07:16:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1D0913ED74
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 06:16:14 +0000 (UTC)
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	by lists.linaro.org (Postfix) with ESMTPS id 7DB693EE59
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 16:19:07 +0000 (UTC)
Received: by mail-yb1-f202.google.com with SMTP id q11-20020a252a0b000000b0061e240c8fb3so16106695ybq.22
        for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 08:19:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:content-transfer-encoding;
        bh=yvZODKlks7uSqzZPx/QuM2FpvgBeZ2Sk/1s0RF7z1Xc=;
        b=ec1Yy1HYUYsk8sjBv+NO8SvcoXRcbLd5uiv9OPxDsNNur23ie7DmHnG9pRO3ilNRJc
         1WvllX32ogWUY0ES0dpiEE0PkkZAqEtGHDkIOKsW2C7o8MPYg3yfWoNyM+WdEiwbD35T
         Wm/nnsqgsS4c257blD2h2q3WLvab8g25Dj83ORJVcsTjGYJyVICqcM/zkGknDnaHwtni
         S4ZDOVi8GlgnNuE1vqJ9LyP4yV9NB3a+ujEPEu7FgVA5ADIEY9Yho6UbQZlXhZiHM4fN
         WFpGmfjmGs9WnZVI4xN8jGbbfCl8+QIJaWkRzPaFr5hx6+gvkC/2/iIAsFPFyG5TXVMH
         vNVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:content-transfer-encoding;
        bh=yvZODKlks7uSqzZPx/QuM2FpvgBeZ2Sk/1s0RF7z1Xc=;
        b=zGaYRwsO4K7vaFk+z74IDMpMcPgReQvCEg+/zXZ+9Fimlb5fuEeRJ359BWRxVLDwc5
         8u+VqYwBFvAp4cqNQT6LDMUTzMWqKM7omRU77Boxx9kcs8yjliuMr9lfDu2u23QA/Upt
         kUSlrJa+fG3Nwf4IpDXxYmcC+MyA8xrAt0aZbBAni0mk0vsvVEH/o3AHEdnaGf7Zkw2W
         dSKsMhH1SzF2cdBPuDSnt4V3EdHo4wy1JYGaeNtyZU6YNgizwE+VpduaN89XJRgV2i9g
         Y8uusZaVHYspQxqaQszonwOek8/US0VaknVF5xe/A8Ut9x2AHiUrwGhzevx4/gr4w0It
         qmKA==
X-Gm-Message-State: AOAM533B+OpsvH1mi9WC9EaSaAMP4MlXCHIEl9Areb5PDKQv5aYcgdON
	Cf3djpEHuvzwGXZPsKjVzXLq8hFr4+Iypks=
X-Google-Smtp-Source: ABdhPJyzRZpguSr08v/JtkpnGzL6Z+Soi+F7TZB5Jn0SLwqv4tx2BBp/V2mC7+AUgYjetHM8LbPfONmE/Uc6VpY=
X-Received: from tj2.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:187])
 (user=tjmercier job=sendgmr) by 2002:a81:2d03:: with SMTP id
 t3mr2496118ywt.215.1644596347024; Fri, 11 Feb 2022 08:19:07 -0800 (PST)
Date: Fri, 11 Feb 2022 16:18:28 +0000
In-Reply-To: <20220211161831.3493782-1-tjmercier@google.com>
Message-Id: <20220211161831.3493782-6-tjmercier@google.com>
Mime-Version: 1.0
References: <20220211161831.3493782-1-tjmercier@google.com>
X-Mailer: git-send-email 2.35.1.265.g69c8d7142f-goog
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
	Johannes Weiner <hannes@cmpxchg.org>
X-MailFrom: 3e4wGYgkKDcQ3two1mso1qyyqvo.mywvsxk1y-ww-2sqvs232.vsxk1y.y1q@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7F4NJSWACHYKAPKA6WJYCZJ26JMBIFXW
X-Message-ID-Hash: 7F4NJSWACHYKAPKA6WJYCZJ26JMBIFXW
X-Mailman-Approved-At: Wed, 16 Feb 2022 06:15:42 +0000
CC: kaleshsingh@google.com, Kenny.Ho@amd.com, "T.J. Mercier" <tjmercier@google.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC v2 5/6] dmabuf: Add gpu cgroup charge transfer function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7F4NJSWACHYKAPKA6WJYCZJ26JMBIFXW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIGRtYV9idWZfY2hhcmdlX3RyYW5zZmVyIGZ1bmN0aW9uIHByb3ZpZGVzIGEgd2F5IGZvciBw
cm9jZXNzZXMgdG8NCnRyYW5zZmVyIGNoYXJnZSBvZiBhIGJ1ZmZlciB0byBhIGRpZmZlcmVudCBw
cm9jZXNzLiBUaGlzIGlzIGVzc2VudGlhbA0KZm9yIHRoZSBjYXNlcyB3aGVyZSBhIGNlbnRyYWwg
YWxsb2NhdG9yIHByb2Nlc3MgZG9lcyBhbGxvY2F0aW9ucyBmb3INCnZhcmlvdXMgc3Vic3lzdGVt
cywgaGFuZHMgb3ZlciB0aGUgZmQgdG8gdGhlIGNsaWVudCB3aG8gcmVxdWVzdGVkIHRoZQ0KbWVt
b3J5IGFuZCBkcm9wcyBhbGwgcmVmZXJlbmNlcyB0byB0aGUgYWxsb2NhdGVkIG1lbW9yeS4NCg0K
RnJvbTogSHJpZHlhIFZhbHNhcmFqdSA8aHJpZHlhQGdvb2dsZS5jb20+DQpTaWduZWQtb2ZmLWJ5
OiBIcmlkeWEgVmFsc2FyYWp1IDxocmlkeWFAZ29vZ2xlLmNvbT4NCkNvLWRldmVsb3BlZC1ieTog
VC5KLiBNZXJjaWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4NClNpZ25lZC1vZmYtYnk6IFQuSi4g
TWVyY2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+DQotLS0NCmNoYW5nZXMgaW4gdjINCi0gTW92
ZSBkbWEtYnVmIGNncm91cCBjaGFyZ2UgdHJhbnNmZXIgZnJvbSBhIGRtYV9idWZfb3AgZGVmaW5l
ZCBieSBldmVyeQ0KaGVhcCB0byBhIHNpbmdsZSBkbWEtYnVmIGZ1bmN0aW9uIGZvciBhbGwgaGVh
cHMgcGVyIERhbmllbCBWZXR0ZXIgYW5kDQpDaHJpc3RpYW4gS8O2bmlnLg0KDQogZHJpdmVycy9k
bWEtYnVmL2RtYS1idWYuYyB8IDQ4ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKw0KIGluY2x1ZGUvbGludXgvZG1hLWJ1Zi5oICAgfCAgMiArKw0KIDIgZmlsZXMgY2hhbmdl
ZCwgNTAgaW5zZXJ0aW9ucygrKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1i
dWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCmluZGV4IDgzZDBkMWI5MTU0Ny4uNTVl
MWI5ODJmODQwIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KKysrIGIv
ZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KQEAgLTEzNzQsNiArMTM3NCw1NCBAQCB2b2lkIGRt
YV9idWZfdnVubWFwKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBkbWFfYnVmX21hcCAq
bWFwKQ0KIH0NCiBFWFBPUlRfU1lNQk9MX05TX0dQTChkbWFfYnVmX3Z1bm1hcCwgRE1BX0JVRik7
DQogDQorLyoqDQorICogZG1hX2J1Zl9jaGFyZ2VfdHJhbnNmZXIgLSBDaGFuZ2UgdGhlIEdQVSBj
Z3JvdXAgdG8gd2hpY2ggdGhlIHByb3ZpZGVkIGRtYV9idWYNCisgKiBpcyBjaGFyZ2VkLg0KKyAq
IEBkbWFidWY6CVtpbl0JYnVmZmVyIHdob3NlIGNoYXJnZSB3aWxsIGJlIG1pZ3JhdGVkIHRvIGEg
ZGlmZmVyZW50IEdQVQ0KKyAqCQkJY2dyb3VwDQorICogQGdwdWNnOglbaW5dCXRoZSBkZXN0aW5h
dGlvbiBHUFUgY2dyb3VwIGZvciBkbWFidWYncyBjaGFyZ2UNCisgKg0KKyAqIE9ubHkgdGFza3Mg
dGhhdCBiZWxvbmcgdG8gdGhlIHNhbWUgY2dyb3VwIHRoZSBidWZmZXIgaXMgY3VycmVudGx5IGNo
YXJnZWQgdG8NCisgKiBtYXkgY2FsbCB0aGlzIGZ1bmN0aW9uLCBvdGhlcndpc2UgaXQgd2lsbCBy
ZXR1cm4gLUVQRVJNLg0KKyAqDQorICogUmV0dXJucyAwIG9uIHN1Y2Nlc3MsIG9yIGEgbmVnYXRp
dmUgZXJybm8gY29kZSBvdGhlcndpc2UuDQorICovDQoraW50IGRtYV9idWZfY2hhcmdlX3RyYW5z
ZmVyKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBncHVjZyAqZ3B1Y2cpDQorew0KKyNp
ZmRlZiBDT05GSUdfQ0dST1VQX0dQVQ0KKwlzdHJ1Y3QgZ3B1Y2cgKmN1cnJlbnRfZ3B1Y2c7DQor
CWludCByZXQgPSAwOw0KKw0KKwkvKg0KKwkgKiBWZXJpZnkgdGhhdCB0aGUgY2dyb3VwIG9mIHRo
ZSBwcm9jZXNzIHJlcXVlc3RpbmcgdGhlIHRyYW5zZmVyIGlzIHRoZQ0KKwkgKiBzYW1lIGFzIHRo
ZSBvbmUgdGhlIGJ1ZmZlciBpcyBjdXJyZW50bHkgY2hhcmdlZCB0by4NCisJICovDQorCWN1cnJl
bnRfZ3B1Y2cgPSBncHVjZ19nZXQoY3VycmVudCk7DQorCW11dGV4X2xvY2soJmRtYWJ1Zi0+bG9j
ayk7DQorCWlmIChjdXJyZW50X2dwdWNnICE9IGRtYWJ1Zi0+Z3B1Y2cpIHsNCisJCXJldCA9IC1F
UEVSTTsNCisJCWdvdG8gZXJyOw0KKwl9DQorDQorCXJldCA9IGdwdWNnX3RyeV9jaGFyZ2UoZ3B1
Y2csIGRtYWJ1Zi0+Z3B1Y2dfZGV2LCBkbWFidWYtPnNpemUpOw0KKwlpZiAocmV0KQ0KKwkJZ290
byBlcnI7DQorDQorCWRtYWJ1Zi0+Z3B1Y2cgPSBncHVjZzsNCisNCisJLyogdW5jaGFyZ2UgdGhl
IGJ1ZmZlciBmcm9tIHRoZSBjZ3JvdXAgaXQncyBjdXJyZW50bHkgY2hhcmdlZCB0by4gKi8NCisJ
Z3B1Y2dfdW5jaGFyZ2UoY3VycmVudF9ncHVjZywgZG1hYnVmLT5ncHVjZ19kZXYsIGRtYWJ1Zi0+
c2l6ZSk7DQorDQorZXJyOg0KKwltdXRleF91bmxvY2soJmRtYWJ1Zi0+bG9jayk7DQorCWdwdWNn
X3B1dChjdXJyZW50X2dwdWNnKTsNCisJcmV0dXJuIHJldDsNCisjZWxzZQ0KKwlyZXR1cm4gMDsN
CisjZW5kaWYgLyogQ09ORklHX0NHUk9VUF9HUFUgKi8NCit9DQorRVhQT1JUX1NZTUJPTF9OU19H
UEwoZG1hX2J1Zl9jaGFyZ2VfdHJhbnNmZXIsIERNQV9CVUYpOw0KKw0KICNpZmRlZiBDT05GSUdf
REVCVUdfRlMNCiBzdGF0aWMgaW50IGRtYV9idWZfZGVidWdfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUg
KnMsIHZvaWQgKnVudXNlZCkNCiB7DQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtYnVm
LmggYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KaW5kZXggNzQyZjI5YzNkYWFmLi44NWM5NDBj
MDg4NjcgMTAwNjQ0DQotLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KKysrIGIvaW5jbHVk
ZS9saW51eC9kbWEtYnVmLmgNCkBAIC02NDYsNCArNjQ2LDYgQEAgaW50IGRtYV9idWZfbW1hcChz
dHJ1Y3QgZG1hX2J1ZiAqLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKiwNCiAJCSB1bnNpZ25lZCBs
b25nKTsNCiBpbnQgZG1hX2J1Zl92bWFwKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBk
bWFfYnVmX21hcCAqbWFwKTsNCiB2b2lkIGRtYV9idWZfdnVubWFwKHN0cnVjdCBkbWFfYnVmICpk
bWFidWYsIHN0cnVjdCBkbWFfYnVmX21hcCAqbWFwKTsNCisNCitpbnQgZG1hX2J1Zl9jaGFyZ2Vf
dHJhbnNmZXIoc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IGdwdWNnICpncHVjZyk7DQog
I2VuZGlmIC8qIF9fRE1BX0JVRl9IX18gKi8NCi0tIA0KMi4zNS4xLjI2NS5nNjljOGQ3MTQyZi1n
b29nDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=
