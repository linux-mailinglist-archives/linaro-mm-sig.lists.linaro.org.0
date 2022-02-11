Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 025CD4B8068
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 07:15:48 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3388B401C4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 06:15:47 +0000 (UTC)
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	by lists.linaro.org (Postfix) with ESMTPS id 715143EDFB
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 16:18:43 +0000 (UTC)
Received: by mail-yb1-f202.google.com with SMTP id b187-20020a251bc4000000b0061e15c5024fso19551646ybb.4
        for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 08:18:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc
         :content-transfer-encoding;
        bh=yZLJCK7E+jF9SMNP1+4R/zXh1+xClGhVRWVCTVgc4sc=;
        b=XMgJm0JnHLSh1BoAQZ0wKW1tqDREm4lLvo1GgrQbJjxOht9DuV2ml/M55v/YYYtwG0
         EiX+KPa11IXCkHxfjDJ+jqjtozMdXO8Np1xzeO0YafmBD2TU0JlinyFCVvLW1rCwcCdZ
         /67a9xCpHLDF2di7B26fW8eJ3s0rX9wB1nI24kFBk8sgAKm4tMtoVZMf/yF+8MHFUzmC
         QNdvprMkp7K7VXtvF+nMffFYcUR4zeTM22B4QkFSF1Qw8M748l+D1HGKINDyJL+qVrEZ
         7Hxo0m9piTC3QY0bjNEgwJt9fVXLWzIOFBU2gNAs/Btn+n7fz9/GKQAbXBpP767W1iWa
         t4eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :content-transfer-encoding;
        bh=yZLJCK7E+jF9SMNP1+4R/zXh1+xClGhVRWVCTVgc4sc=;
        b=M7vc4gjz2yPJU1CGZmc3t6PhOPpBeoqhohta20jaWmXpehL9S+MvhrCzZwLscrOv3R
         kFkJ2hWfSFZsAYOC3HUBC0dWNACURu12N04hXroHHmGxbCq3KKmKIrv3pMEZYfpuM+EB
         GD6u+F5NohqSt6GafQKhPt2yDxn0cmuC4KVbIkQxb46pUoFDxdjnUrRsXyglU5a+7RCM
         wBCZPsBoGOWdPZBS33FvyEGHbNl0mVe4W0SJjd+ZAbTlWuAf5Ai4TYrexSD+aIB541E4
         0sunyoZ7u2DFs0riYNKcxlXfzm3cnlsIap0V3R9rjaVOmYSrOPkxy1uSk2gIgWO5eHkZ
         p4mw==
X-Gm-Message-State: AOAM5329H1g5tNrXsTA1E0IxugwaNhresC70v14iFfkDpU++7q167xsq
	oD2u/QyVxuCTIPBZl1MHgpcmEt5fCBq0rBg=
X-Google-Smtp-Source: ABdhPJzhF/L162IKZGA2v1vfeqRBtKk+kc26yO7jRh6AAqTqVZtjKGL2w7yvYf60mUisa/RM+m5bcl0vC/4rWsw=
X-Received: from tj2.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:187])
 (user=tjmercier job=sendgmr) by 2002:a5b:c6:: with SMTP id
 d6mr1955239ybp.273.1644596323025; Fri, 11 Feb 2022 08:18:43 -0800 (PST)
Date: Fri, 11 Feb 2022 16:18:23 +0000
Message-Id: <20220211161831.3493782-1-tjmercier@google.com>
Mime-Version: 1.0
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
X-MailFrom: 3Y4wGYgkKDawfVYQdOUQdSaaSXQ.OaYXUZMda-YY-eUSXUefe.XUZMda.adS@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FPWANCTMNAQKRR2RF257WZQA5FUS5AFJ
X-Message-ID-Hash: FPWANCTMNAQKRR2RF257WZQA5FUS5AFJ
X-Mailman-Approved-At: Wed, 16 Feb 2022 06:15:32 +0000
CC: kaleshsingh@google.com, Kenny.Ho@amd.com, "T.J. Mercier" <tjmercier@google.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC v2 0/6] Proposal for a GPU cgroup controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FPWANCTMNAQKRR2RF257WZQA5FUS5AFJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyBwYXRjaCBzZXJpZXMgcmV2aXNpdHMgdGhlIHByb3Bvc2FsIGZvciBhIEdQVSBjZ3JvdXAg
Y29udHJvbGxlciB0bw0KdHJhY2sgYW5kIGxpbWl0IG1lbW9yeSBhbGxvY2F0aW9ucyBieSB2YXJp
b3VzIGRldmljZS9hbGxvY2F0b3INCnN1YnN5c3RlbXMuIFRoZSBwYXRjaCBzZXJpZXMgYWxzbyBj
b250YWlucyBhIHNpbXBsZSBwcm90b3R5cGUgdG8NCmlsbHVzdHJhdGUgaG93IEFuZHJvaWQgaW50
ZW5kcyB0byBpbXBsZW1lbnQgRE1BLUJVRiBhbGxvY2F0b3INCmF0dHJpYnV0aW9uIHVzaW5nIHRo
ZSBHUFUgY2dyb3VwIGNvbnRyb2xsZXIuIFRoZSBwcm90b3R5cGUgZG9lcyBub3QNCmluY2x1ZGUg
cmVzb3VyY2UgbGltaXQgZW5mb3JjZW1lbnRzLg0KDQpDaGFuZ2Vsb2c6DQoNCnYyOg0KU2VlIHRo
ZSBwcmV2aW91cyByZXZpc2lvbiBvZiB0aGlzIGNoYW5nZSBzdWJtaXR0ZWQgYnkgSHJpZHlhIFZh
bHNhcmFqdQ0KYXQ6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDIyMDExNTAxMDYyMi4z
MTg1OTIxLTEtaHJpZHlhQGdvb2dsZS5jb20vDQoNCk1vdmUgZG1hLWJ1ZiBjZ3JvdXAgY2hhcmdl
IHRyYW5zZmVyIGZyb20gYSBkbWFfYnVmX29wIGRlZmluZWQgYnkgZXZlcnkNCmhlYXAgdG8gYSBz
aW5nbGUgZG1hLWJ1ZiBmdW5jdGlvbiBmb3IgYWxsIGhlYXBzIHBlciBEYW5pZWwgVmV0dGVyIGFu
ZA0KQ2hyaXN0aWFuIEvDtm5pZy4gUG9pbnRlcnMgdG8gc3RydWN0IGdwdWNnIGFuZCBzdHJ1Y3Qg
Z3B1Y2dfZGV2aWNlDQp0cmFja2luZyB0aGUgY3VycmVudCBhc3NvY2lhdGlvbnMgd2VyZSBhZGRl
ZCB0byB0aGUgZG1hX2J1ZiBzdHJ1Y3QgdG8NCmFjaGlldmUgdGhpcy4NCg0KRml4IGluY29ycmVj
dCBLY29uZmlnIGhlbHAgc2VjdGlvbiBpbmRlbnRhdGlvbiBwZXIgUmFuZHkgRHVubGFwLg0KDQpI
aXN0b3J5IG9mIHRoZSBHUFUgY2dyb3VwIGNvbnRyb2xsZXINCj09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PQ0KVGhlIEdQVS9EUk0gY2dyb3VwIGNvbnRyb2xsZXIgY2FtZSBpbnRv
IGJlaW5nIHdoZW4gYSBjb25zZW5zdXNbMV0NCndhcyByZWFjaGVkIHRoYXQgdGhlIHJlc291cmNl
cyBpdCB0cmFja2VkIHdlcmUgdW5zdWl0YWJsZSB0byBiZSBpbnRlZ3JhdGVkDQppbnRvIG1lbWNn
LiBPcmlnaW5hbGx5LCB0aGUgcHJvcG9zZWQgY29udHJvbGxlciB3YXMgc3BlY2lmaWMgdG8gdGhl
IERSTQ0Kc3Vic3lzdGVtIGFuZCB3YXMgaW50ZW5kZWQgdG8gdHJhY2sgR0VNIGJ1ZmZlcnMgYW5k
IEdQVS1zcGVjaWZpYw0KcmVzb3VyY2VzWzJdLiBJbiBvcmRlciB0byBoZWxwIGVzdGFibGlzaCBh
IHVuaWZpZWQgbWVtb3J5IGFjY291bnRpbmcgbW9kZWwNCmZvciBhbGwgR1BVIGFuZCBhbGwgcmVs
YXRlZCBzdWJzeXN0ZW1zLCBEYW5pZWwgVmV0dGVyIHB1dCBmb3J0aCBhDQpzdWdnZXN0aW9uIHRv
IG1vdmUgaXQgb3V0IG9mIHRoZSBEUk0gc3Vic3lzdGVtIHNvIHRoYXQgaXQgY2FuIGJlIHVzZWQg
YnkNCm90aGVyIERNQS1CVUYgZXhwb3J0ZXJzIGFzIHdlbGxbM10uIFRoaXMgUkZDIHByb3Bvc2Vz
IGFuIGludGVyZmFjZSB0aGF0DQpkb2VzIHRoZSBzYW1lLg0KDQpbMV06IGh0dHBzOi8vcGF0Y2h3
b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9kcmktZGV2ZWwvY292ZXIvMjAxOTA1MDExNDA0MzguOTUw
Ni0xLWJyaWFuLndlbHR5QGludGVsLmNvbS8jMjI2MjQ3MDUNClsyXTogaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvYW1kLWdmeC8yMDIxMDEyNjIxNDYyNi4xNjI2MC0xLWJyaWFuLndlbHR5QGludGVs
LmNvbS8NClszXTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYW1kLWdmeC9ZQ1ZPbDglMkY4N2Jx
UlNRZWlAcGhlbm9tLmZmd2xsLmxvY2FsLw0KDQpULkouIE1lcmNpZXIgKDYpOg0KICBncHU6IHJm
YzogUHJvcG9zYWwgZm9yIGEgR1BVIGNncm91cCBjb250cm9sbGVyDQogIGNncm91cDogZ3B1OiBB
ZGQgYSBjZ3JvdXAgY29udHJvbGxlciBmb3IgYWxsb2NhdG9yIGF0dHJpYnV0aW9uIG9mIEdQVQ0K
ICAgIG1lbW9yeQ0KICBkbWFidWY6IFVzZSB0aGUgR1BVIGNncm91cCBjaGFyZ2UvdW5jaGFyZ2Ug
QVBJcw0KICBkbWFidWY6IGhlYXBzOiBleHBvcnQgc3lzdGVtX2hlYXAgYnVmZmVycyB3aXRoIEdQ
VSBjZ3JvdXAgY2hhcmdpbmcNCiAgZG1hYnVmOiBBZGQgZ3B1IGNncm91cCBjaGFyZ2UgdHJhbnNm
ZXIgZnVuY3Rpb24NCiAgYW5kcm9pZDogYmluZGVyOiBBZGQgYSBidWZmZXIgZmxhZyB0byByZWxp
bnF1aXNoIG93bmVyc2hpcCBvZiBmZHMNCg0KIERvY3VtZW50YXRpb24vZ3B1L3JmYy9ncHUtY2dy
b3VwLnJzdCB8IDE5NSArKysrKysrKysrKysrKysrKw0KIERvY3VtZW50YXRpb24vZ3B1L3JmYy9p
bmRleC5yc3QgICAgICB8ICAgNCArDQogZHJpdmVycy9hbmRyb2lkL2JpbmRlci5jICAgICAgICAg
ICAgIHwgIDI2ICsrKw0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgICAgICAgICAgICB8IDEw
MCArKysrKysrKysNCiBkcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYyAgICAgICAgICAgfCAgMjcg
KysrDQogZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMgIHwgICAzICsNCiBpbmNs
dWRlL2xpbnV4L2Nncm91cF9ncHUuaCAgICAgICAgICAgfCAxMjcgKysrKysrKysrKysNCiBpbmNs
dWRlL2xpbnV4L2Nncm91cF9zdWJzeXMuaCAgICAgICAgfCAgIDQgKw0KIGluY2x1ZGUvbGludXgv
ZG1hLWJ1Zi5oICAgICAgICAgICAgICB8ICAyMiArLQ0KIGluY2x1ZGUvbGludXgvZG1hLWhlYXAu
aCAgICAgICAgICAgICB8ICAxMSArDQogaW5jbHVkZS91YXBpL2xpbnV4L2FuZHJvaWQvYmluZGVy
LmggIHwgICAxICsNCiBpbml0L0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDcg
Kw0KIGtlcm5lbC9jZ3JvdXAvTWFrZWZpbGUgICAgICAgICAgICAgICB8ICAgMSArDQoga2VybmVs
L2Nncm91cC9ncHUuYyAgICAgICAgICAgICAgICAgIHwgMzA0ICsrKysrKysrKysrKysrKysrKysr
KysrKysrKw0KIDE0IGZpbGVzIGNoYW5nZWQsIDgzMCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQ0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2dwdS9yZmMvZ3B1LWNncm91
cC5yc3QNCiBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9saW51eC9jZ3JvdXBfZ3B1LmgNCiBj
cmVhdGUgbW9kZSAxMDA2NDQga2VybmVsL2Nncm91cC9ncHUuYw0KDQotLSANCjIuMzUuMS4yNjUu
ZzY5YzhkNzE0MmYtZ29vZw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
