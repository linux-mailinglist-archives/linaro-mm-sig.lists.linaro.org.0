Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E74414B641F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 08:15:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2A1213EEC5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 07:15:47 +0000 (UTC)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	by lists.linaro.org (Postfix) with ESMTPS id A2B1E3ED45
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Jan 2022 18:54:52 +0000 (UTC)
Received: by mail-yb1-f172.google.com with SMTP id g12so6738900ybh.4
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Jan 2022 10:54:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=QuweckTQS4ipVDvmzbXJd32fRhDvTN+WDj7gwwJ5UoU=;
        b=jQFQQg8xNBNZ796rZm7JSGtcgk/RVRlUMQOrW3OprZAwIy/2ezKxTUPzerHa5MEWoA
         +kfQjBOqWihjoI8v514cV21UvUHS5JntgpKuZ/16liMkZGbbSOZYF4w1r6JCuqamghHv
         vowP4DYmSxtE//fgZqRAITszSqg91cqu9Gg64FsXe9W1savFkk2plmXtLm5fBBA0jF0b
         oImfjSzLxxePgVhSUZSsFU9ZJ84ZiyGtkbd0T7VyhnxMEoyDyxlSw/pOQe3BAymEfuQ2
         L/UK5sx9cvQq7XnTqbleIw48nFYsStzQLbt2Y29R65fkhq5UTeKah55mvbCMv7n+zmyV
         rtAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=QuweckTQS4ipVDvmzbXJd32fRhDvTN+WDj7gwwJ5UoU=;
        b=A5iEHc7sBdplkCfeZ6j17CO091pGdBwVY19SpOMcSEdYVfI40s9ynFskvCu7O9qzNt
         v18UzT1LgCvjoSLAQ1Z+ylOpCkghk2cEQ96HuzGB1XXI246P7A6vzBjZjHdnH2RdhqLA
         +v+NAhM8/BQ6G8t1rtQsOj8fYnqd4XW74LTN2gYub7ra+XG7v4muYXCcO98LLUhI5UY7
         QLS2tN9dgjPZ2L7phNZJREcmNKNpMrBUvK5JCjP8RvtoRawuCd7V2/8mLogG5UZ5d2U+
         3FlEDPaRLDhiQ63Z/OTStumIgj5QJIqRo0AL9m+eSpJMUsILaCmvNuZ/lKvuBKSfTw9/
         aYuw==
X-Gm-Message-State: AOAM530TFAQWZQ4fngrWSy+hmhozTQdCjAWsxUHs/8+h2q+xd17BpArN
	Pr0QMc4fmBPnXViVpUDFAO64xXMwwfCbPIcApn1Szw==
X-Google-Smtp-Source: ABdhPJwmF0diEuNSgYDq6VwVG2sEv2wSXB4R4GhA8CrKDHbQBq+Cp6d2D+RYzxyanPD1WMMgcwbQ0BJ4awu2dbq2mt8=
X-Received: by 2002:a25:388a:: with SMTP id f132mr35653202yba.102.1642532092017;
 Tue, 18 Jan 2022 10:54:52 -0800 (PST)
MIME-Version: 1.0
References: <20220115010622.3185921-1-hridya@google.com> <20220115010622.3185921-5-hridya@google.com>
 <f8c8b196-7d12-6242-97ac-38149f3a3ba3@amd.com>
In-Reply-To: <f8c8b196-7d12-6242-97ac-38149f3a3ba3@amd.com>
From: Hridya Valsaraju <hridya@google.com>
Date: Tue, 18 Jan 2022 10:54:16 -0800
Message-ID: <CA+wgaPMjCfjQS4LA8hmVwAaGfXZhoJvvTUnOGt3duOhFb3orTw@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-MailFrom: hridya@google.com
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: TSBUUMZV3I5BYAQVCJ3RUOVI5YDJ7HLL
X-Message-ID-Hash: TSBUUMZV3I5BYAQVCJ3RUOVI5YDJ7HLL
X-Mailman-Approved-At: Tue, 15 Feb 2022 07:15:39 +0000
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <christian@brauner.io>, Suren Baghdasaryan <surenb@google.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Dave Airlie <airlied@redhat.com>, Jason Ekstrand <jason@jlekstrand.net>, Matthew Auld <matthew.auld@intel.com>, Matthew Brost <matthew.brost@intel.com>, Li Li <dualli@goo
 gle.com>, Marco Ballesio <balejs@google.com>, Miguel Ojeda <ojeda@kernel.org>, Hang Lu <hangl@codeaurora.org>, Wedson Almeida Filho <wedsonaf@google.com>, Masahiro Yamada <masahiroy@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <nathan@kernel.org>, Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, Chris Down <chris@chrisdown.name>, Vipin Sharma <vipinsh@google.com>, Daniel Borkmann <daniel@iogearbox.net>, Vlastimil Babka <vbabka@suse.cz>, Arnd Bergmann <arnd@arndb.de>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, Kenny.Ho@amd.com, daniels@collabora.com, kaleshsingh@google.com, tjmercier@google.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC 4/6] dma-buf: Add DMA-BUF exporter op to charge a DMA-BUF to a cgroup.
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TSBUUMZV3I5BYAQVCJ3RUOVI5YDJ7HLL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gU3VuLCBKYW4gMTYsIDIwMjIgYXQgMTE6NDYgUE0gQ2hyaXN0aWFuIEvDtm5pZw0KPGNocmlz
dGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6DQo+DQo+IEFtIDE1LjAxLjIyIHVtIDAyOjA2IHNj
aHJpZWIgSHJpZHlhIFZhbHNhcmFqdToNCj4gPiBUaGUgb3B0aW9uYWwgZXhwb3J0ZXIgb3AgcHJv
dmlkZXMgYSB3YXkgZm9yIHByb2Nlc3NlcyB0byB0cmFuc2Zlcg0KPiA+IGNoYXJnZSBvZiBhIGJ1
ZmZlciB0byBhIGRpZmZlcmVudCBwcm9jZXNzLiBUaGlzIGlzIGVzc2VudGlhbCBmb3IgdGhlDQo+
ID4gY2FzZXMgd2hlcmUgYSBjZW50cmFsIGFsbG9jYXRvciBwcm9jZXNzIGRvZXMgYWxsb2NhdGlv
bnMgZm9yIHZhcmlvdXMNCj4gPiBzdWJzeXN0ZW1zLCBoYW5kcyBvdmVyIHRoZSBmZCB0byB0aGUg
Y2xpZW50IHdobw0KPiA+IHJlcXVlc3RlZCB0aGUgbWVtb3J5IGFuZCBkcm9wcyBhbGwgcmVmZXJl
bmNlcyB0byB0aGUgYWxsb2NhdGVkIG1lbW9yeS4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEhy
aWR5YSBWYWxzYXJhanUgPGhyaWR5YUBnb29nbGUuY29tPg0KPiA+IC0tLQ0KPiA+ICAgaW5jbHVk
ZS9saW51eC9kbWEtYnVmLmggfCAxOCArKysrKysrKysrKysrKysrKysNCj4gPiAgIDEgZmlsZSBj
aGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9s
aW51eC9kbWEtYnVmLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KPiA+IGluZGV4IDdhYjUw
MDc2ZTdhNi4uZDVlNTJmODFjYzZmIDEwMDY0NA0KPiA+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1h
LWJ1Zi5oDQo+ID4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCj4gPiBAQCAtMTMsNiAr
MTMsNyBAQA0KPiA+ICAgI2lmbmRlZiBfX0RNQV9CVUZfSF9fDQo+ID4gICAjZGVmaW5lIF9fRE1B
X0JVRl9IX18NCj4gPg0KPiA+ICsjaW5jbHVkZSA8bGludXgvY2dyb3VwX2dwdS5oPg0KPiA+ICAg
I2luY2x1ZGUgPGxpbnV4L2RtYS1idWYtbWFwLmg+DQo+ID4gICAjaW5jbHVkZSA8bGludXgvZmls
ZS5oPg0KPiA+ICAgI2luY2x1ZGUgPGxpbnV4L2Vyci5oPg0KPiA+IEBAIC0yODUsNiArMjg2LDIz
IEBAIHN0cnVjdCBkbWFfYnVmX29wcyB7DQo+ID4NCj4gPiAgICAgICBpbnQgKCp2bWFwKShzdHJ1
Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3QgZG1hX2J1Zl9tYXAgKm1hcCk7DQo+ID4gICAgICAg
dm9pZCAoKnZ1bm1hcCkoc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IGRtYV9idWZfbWFw
ICptYXApOw0KPiA+ICsNCj4gPiArICAgICAvKioNCj4gPiArICAgICAgKiBAY2hhcmdlX3RvX2Nn
cm91cDoNCj4gPiArICAgICAgKg0KPiA+ICsgICAgICAqIFRoaXMgaXMgY2FsbGVkIGJ5IGFuIGV4
cG9ydGVyIHRvIGNoYXJnZSBhIGJ1ZmZlciB0byB0aGUgc3BlY2lmaWVkDQo+ID4gKyAgICAgICog
Y2dyb3VwLg0KPg0KPiBXZWxsIHRoYXQgc2VudGVuY2UgbWFrZXMgYWJzb2x1dGVseSBubyBzZW5z
ZSBhdCBhbGwuDQo+DQo+IFRoZSBkbWFfYnVmX29wcyBhcmUgc3VwcG9zZWQgdG8gYmUgY2FsbGVk
IGJ5IHRoZSBETUEtYnVmIHN1YnN5c3RlbSBvbg0KPiBiZWhhbHZlcyBvZiB0aGUgaW1wb3J0ZXIg
YW5kIG5ldmVyIGJ5IHRoZSBleHBvcnRlciBpdHNlbGYuDQo+DQo+IEkgaG9wZSB0aGF0IHRoaXMg
aXMganVzdCBhIGRvY3VtZW50YXRpb24gbWl4dXAuDQoNClRoYW5rIHlvdSBmb3IgdGFraW5nIGEg
bG9vayBDaHJpc3RpYW4hDQoNClllcywgdGhhdCB3YXMgcG9vciB3b3JkaW5nLCBzb3JyeSBhYm91
dCB0aGF0LiBJdCBzaG91bGQgaW5zdGVhZCBzYXkNCnRoYXQgdGhlIG9wIHdvdWxkIGJlIGNhbGxl
ZCBieSB0aGUgcHJvY2VzcyB0aGUgYnVmZmVyIGlzIGN1cnJlbnRseQ0KY2hhcmdlZCB0byBpbiBv
cmRlciB0byB0cmFuc2ZlciB0aGUgYnVmZmVyJ3MgY2hhcmdlIHRvIGEgZGlmZmVyZW50DQpjZ3Jv
dXAuIFRoaXMgaXMgaGVscGZ1bCBpbiB0aGUgY2FzZSB3aGVyZSBhIHByb2Nlc3MgYWN0cyBhcyBh
bg0KYWxsb2NhdG9yIGZvciBtdWx0aXBsZSBjbGllbnQgcHJvY2Vzc2VzIGFuZCB3ZSB3b3VsZCBs
aWtlIHRoZQ0KYWxsb2NhdGVkIGJ1ZmZlcnMgdG8gYmUgY2hhcmdlZCB0byB0aGUgY2xpZW50cyB3
aG8gcmVxdWVzdGVkIHRoZWlyDQphbGxvY2F0aW9uKGluc3RlYWQgb2YgdGhlIGFsbG9jYXRpbmcg
cHJvY2VzcyBhcyBpcyB0aGUgZGVmYXVsdA0KYmVoYXZpb3IpLiBJbiBBbmRyb2lkLCB0aGUgZ3Jh
cGhpY3MgYWxsb2NhdG9yIEhBTCBwcm9jZXNzWzFdIGRvZXMNCm1vc3Qgb2YgdGhlIGdyYXBoaWNz
IGFsbG9jYXRpb25zIG9uIGJlaGFsZiBvZiB2YXJpb3VzIGNsaWVudHMuIEFmdGVyDQphbGxvY2F0
aW9uLCB0aGUgSEFMIHByb2Nlc3MgcGFzc2VzIHRoZSBmZCB0byB0aGUgY2xpZW50IG92ZXIgYmlu
ZGVyDQpJUEMgYW5kIHRoZSBiaW5kZXIgZHJpdmVyIGludm9rZXMgdGhlIGNoYXJnZV90b19jZ3Jv
dXAoKSBETUEtQlVGIG9wIHRvDQp1bmNoYXJnZSB0aGUgYnVmZmVyIGZyb20gdGhlIEhBTCBwcm9j
ZXNzIGFuZCBjaGFyZ2UgaXQgdG8gdGhlIGNsaWVudA0KcHJvY2VzcyBpbnN0ZWFkLg0KDQpbMV06
IGh0dHBzOi8vc291cmNlLmFuZHJvaWQuY29tL2RldmljZXMvZ3JhcGhpY3MvYXJjaC1icS1ncmFs
bG9jDQoNClJlZ2FyZHMsDQpIcmlkeWENCg0KDQo+DQo+IFJlZ2FyZHMsDQo+IENocmlzdGlhbi4N
Cj4NCj4gPiAgIFRoZSBjYWxsZXIgbXVzdCBob2xkIGEgcmVmZXJlbmNlIHRvIEBncHVjZyBvYnRh
aW5lZCB2aWENCj4gPiArICAgICAgKiBncHVjZ19nZXQoKS4gVGhlIERNQS1CVUYgd2lsbCBiZSB1
bmNoYXJnZWQgZnJvbSB0aGUgY2dyb3VwIGl0IGlzDQo+ID4gKyAgICAgICogY3VycmVudGx5IGNo
YXJnZWQgdG8gYmVmb3JlIGJlaW5nIGNoYXJnZWQgdG8gQGdwdWNnLiBUaGUgY2FsbGVyIG11c3QN
Cj4gPiArICAgICAgKiBiZWxvbmcgdG8gdGhlIGNncm91cCB0aGUgYnVmZmVyIGlzIGN1cnJlbnRs
eSBjaGFyZ2VkIHRvLg0KPiA+ICsgICAgICAqDQo+ID4gKyAgICAgICogVGhpcyBjYWxsYmFjayBp
cyBvcHRpb25hbC4NCj4gPiArICAgICAgKg0KPiA+ICsgICAgICAqIFJldHVybnM6DQo+ID4gKyAg
ICAgICoNCj4gPiArICAgICAgKiAwIG9uIHN1Y2Nlc3Mgb3IgbmVnYXRpdmUgZXJyb3IgY29kZSBv
biBmYWlsdXJlLg0KPiA+ICsgICAgICAqLw0KPiA+ICsgICAgIGludCAoKmNoYXJnZV90b19jZ3Jv
dXApKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBncHVjZyAqZ3B1Y2cpOw0KPiA+ICAg
fTsNCj4gPg0KPiA+ICAgLyoqDQo+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
