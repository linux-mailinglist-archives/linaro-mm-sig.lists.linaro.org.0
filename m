Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B98D44EC488
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 14:40:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E8CDE3EC44
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 12:40:16 +0000 (UTC)
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	by lists.linaro.org (Postfix) with ESMTPS id 810D83EA27
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Mar 2022 03:59:57 +0000 (UTC)
Received: by mail-yb1-f202.google.com with SMTP id y193-20020a25dcca000000b00636d788e549so8991297ybe.5
        for <linaro-mm-sig@lists.linaro.org>; Sun, 27 Mar 2022 20:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc
         :content-transfer-encoding;
        bh=ZanSM+z+bqiT+dazTvxIhzoTPKfBDbdIJDmpkh0ngiA=;
        b=dEZSetUwhJ77JER9uOFHsQsp76JzF2DjT1q6+REMveb9Wt4BrGDGIQgD1zzZM9bma+
         yhEZCho/DguXCN/LWIpS6/sXTLVs/7I8V57LnPEuNyRfMseJ+ScdFrLfEpJoGDWtMIFM
         t64Dd1vWRIhCANW1YNotTj71VdF86eU/Z1yZ/2P1/oZx3uAbxFDxrqLAVLQm8PT6wR0S
         qEnNzRfOZYWdnMNSE8GFnj9hFuliT0+m6mkGHNaGsEGbIMS5RBIfRao1fm6MCxklAbdl
         N8IuezzihPA3MdxNEuigRrXDRU77mTQDN2Wi23Fw13t4QVAYQLDOIAduNv28SyaFtkAo
         +W/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :content-transfer-encoding;
        bh=ZanSM+z+bqiT+dazTvxIhzoTPKfBDbdIJDmpkh0ngiA=;
        b=7fRuj4AsiangQKmEGfWkNHY1zWE/ZXQ9b+v9HkDsIjai07JgiRJMs+qjoiePSMNU/5
         gMRBey9kkztnYtns31l6/Jx8cycpz2BYdxWCSmfbK4o6rPad1cJiX2uVL/SlMvxNDdox
         8gGr51tJN2dQPVYeyynAorFNohooEvRWhST1/Y3E6pm2104ksQB8KtbVMJeDuvt0VPP0
         ivPRc4NYAjSnd8lom715gTrT4oAPYxwT+K1gv70RlS6vN8Sqy5hKXh5gIEyt3vBiNdPj
         WRev2ucOSBRAaBt53Zcr8G1jumJABA+Hwuy3CmYZrKBtaORCo05LE7Ga2QgILHCIS6K9
         cEJg==
X-Gm-Message-State: AOAM5307Y3kAqUqWmFnfOEQeBUo3KMdsuWnAl32KVplfvHHEQUNu0lfH
	idNmjK5FO1rNnGt4IdI3Q1UIqvyEl9mA9Hg=
X-Google-Smtp-Source: ABdhPJxDNziGYjzb/ZRm1pevbyvVdw8eQjc7VwyCozk0n3Hczh8k36e8/hVih9NxH0h+d3gtUEehLBH2IOPtLgg=
X-Received: from tj2.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:187])
 (user=tjmercier job=sendgmr) by 2002:a25:25c3:0:b0:633:8079:1768 with SMTP id
 l186-20020a2525c3000000b0063380791768mr21066931ybl.488.1648439997054; Sun, 27
 Mar 2022 20:59:57 -0700 (PDT)
Date: Mon, 28 Mar 2022 03:59:39 +0000
Message-Id: <20220328035951.1817417-1-tjmercier@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.35.1.1021.g381101b075-goog
From: "T.J. Mercier" <tjmercier@google.com>
To: tjmercier@google.com, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"=?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?=" <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
	Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>,
	Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	"=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>,
	Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>,
	Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>,
	Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>,
	Johannes Weiner <hannes@cmpxchg.org>, Shuah Khan <shuah@kernel.org>
X-MailFrom: 3vTJBYgkKDUAvlogtekgtiqqing.eqonkpctq-oo-ukinkuvu.nkpctq.qti@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JO6LJBDMAYSSZW2XJGLNOAQREOJTQFCB
X-Message-ID-Hash: JO6LJBDMAYSSZW2XJGLNOAQREOJTQFCB
X-Mailman-Approved-At: Wed, 30 Mar 2022 12:40:12 +0000
CC: kaleshsingh@google.com, Kenny.Ho@amd.com, mkoutny@suse.com, skhan@linuxfoundation.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, linux-kselftest@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC v4 0/8] Proposal for a GPU cgroup controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JO6LJBDMAYSSZW2XJGLNOAQREOJTQFCB/>
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
cmVzb3VyY2UgbGltaXQgZW5mb3JjZW1lbnRzLg0KDQpDaGFuZ2Vsb2c6DQp2NDoNClNraXAgdGVz
dCBpZiBub3QgcnVuIGFzIHJvb3QgcGVyIFNodWFoIEtoYW4NCg0KQWRkIGJldHRlciB0ZXN0IGxv
Z2dpbmcgZm9yIGFibm9ybWFsIGNoaWxkIHRlcm1pbmF0aW9uIHBlciBTaHVhaCBLaGFuDQoNCkFk
anVzdCBvcmRlcmluZyBvZiBjaGFyZ2UvdW5jaGFyZ2UgZHVyaW5nIHRyYW5zZmVyIHRvIGF2b2lk
IHBvdGVudGlhbGx5DQpoaXR0aW5nIGNncm91cCBsaW1pdCBwZXIgTWljaGFsIEtvdXRuw70NCg0K
QWRqdXN0IGdwdWNnX3RyeV9jaGFyZ2UgY3JpdGljYWwgc2VjdGlvbiBmb3IgY2hhcmdlIHRyYW5z
ZmVyIGZ1bmN0aW9uYWxpdHkNCg0KRml4IHVuaW5pdGlhbGl6ZWQgcmV0dXJuIGNvZGUgZXJyb3Ig
Zm9yIGRtYWJ1Zl90cnlfY2hhcmdlIGVycm9yIGNhc2UNCg0KdjM6DQpSZW1vdmUgVXBzdHJlYW1p
bmcgUGxhbiBmcm9tIGdwdS1jZ3JvdXAucnN0IHBlciBKb2huIFN0dWx0eg0KDQpVc2UgbW9yZSBj
b21tb24gZHVhbCBhdXRob3IgY29tbWl0IG1lc3NhZ2UgZm9ybWF0IHBlciBKb2huIFN0dWx0eg0K
DQpSZW1vdmUgYW5kcm9pZCBmcm9tIGJpbmRlciBjaGFuZ2VzIHRpdGxlIHBlciBUb2RkIEtqb3MN
Cg0KQWRkIGEga3NlbGZ0ZXN0IGZvciB0aGlzIG5ldyBiZWhhdmlvciBwZXIgR3JlZyBLcm9haC1I
YXJ0bWFuDQoNCkluY2x1ZGUgZGV0YWlscyBvbiBiZWhhdmlvciBmb3IgYWxsIGNvbWJpbmF0aW9u
cyBvZiBrZXJuZWwvdXNlcnNwYWNlDQp2ZXJzaW9ucyBpbiBjaGFuZ2Vsb2cgKHRoYW5rcyBTdXJl
biBCYWdoZGFzYXJ5YW4pIHBlciBHcmVnIEtyb2FoLUhhcnRtYW4uDQoNCkZpeCBwaWQgYW5kIHVp
ZCB0eXBlcyBpbiBiaW5kZXIgVUFQSSBoZWFkZXINCg0KdjI6DQpTZWUgdGhlIHByZXZpb3VzIHJl
dmlzaW9uIG9mIHRoaXMgY2hhbmdlIHN1Ym1pdHRlZCBieSBIcmlkeWEgVmFsc2FyYWp1DQphdDog
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjIwMTE1MDEwNjIyLjMxODU5MjEtMS1ocmlk
eWFAZ29vZ2xlLmNvbS8NCg0KTW92ZSBkbWEtYnVmIGNncm91cCBjaGFyZ2UgdHJhbnNmZXIgZnJv
bSBhIGRtYV9idWZfb3AgZGVmaW5lZCBieSBldmVyeQ0KaGVhcCB0byBhIHNpbmdsZSBkbWEtYnVm
IGZ1bmN0aW9uIGZvciBhbGwgaGVhcHMgcGVyIERhbmllbCBWZXR0ZXIgYW5kDQpDaHJpc3RpYW4g
S8O2bmlnLiBQb2ludGVycyB0byBzdHJ1Y3QgZ3B1Y2cgYW5kIHN0cnVjdCBncHVjZ19kZXZpY2UN
CnRyYWNraW5nIHRoZSBjdXJyZW50IGFzc29jaWF0aW9ucyB3ZXJlIGFkZGVkIHRvIHRoZSBkbWFf
YnVmIHN0cnVjdCB0bw0KYWNoaWV2ZSB0aGlzLg0KDQpGaXggaW5jb3JyZWN0IEtjb25maWcgaGVs
cCBzZWN0aW9uIGluZGVudGF0aW9uIHBlciBSYW5keSBEdW5sYXAuDQoNCkhpc3Rvcnkgb2YgdGhl
IEdQVSBjZ3JvdXAgY29udHJvbGxlcg0KPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09DQpUaGUgR1BVL0RSTSBjZ3JvdXAgY29udHJvbGxlciBjYW1lIGludG8gYmVpbmcgd2hlbiBh
IGNvbnNlbnN1c1sxXQ0Kd2FzIHJlYWNoZWQgdGhhdCB0aGUgcmVzb3VyY2VzIGl0IHRyYWNrZWQg
d2VyZSB1bnN1aXRhYmxlIHRvIGJlIGludGVncmF0ZWQNCmludG8gbWVtY2cuIE9yaWdpbmFsbHks
IHRoZSBwcm9wb3NlZCBjb250cm9sbGVyIHdhcyBzcGVjaWZpYyB0byB0aGUgRFJNDQpzdWJzeXN0
ZW0gYW5kIHdhcyBpbnRlbmRlZCB0byB0cmFjayBHRU0gYnVmZmVycyBhbmQgR1BVLXNwZWNpZmlj
DQpyZXNvdXJjZXNbMl0uIEluIG9yZGVyIHRvIGhlbHAgZXN0YWJsaXNoIGEgdW5pZmllZCBtZW1v
cnkgYWNjb3VudGluZyBtb2RlbA0KZm9yIGFsbCBHUFUgYW5kIGFsbCByZWxhdGVkIHN1YnN5c3Rl
bXMsIERhbmllbCBWZXR0ZXIgcHV0IGZvcnRoIGENCnN1Z2dlc3Rpb24gdG8gbW92ZSBpdCBvdXQg
b2YgdGhlIERSTSBzdWJzeXN0ZW0gc28gdGhhdCBpdCBjYW4gYmUgdXNlZCBieQ0Kb3RoZXIgRE1B
LUJVRiBleHBvcnRlcnMgYXMgd2VsbFszXS4gVGhpcyBSRkMgcHJvcG9zZXMgYW4gaW50ZXJmYWNl
IHRoYXQNCmRvZXMgdGhlIHNhbWUuDQoNClsxXTogaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9y
Zy9wcm9qZWN0L2RyaS1kZXZlbC9jb3Zlci8yMDE5MDUwMTE0MDQzOC45NTA2LTEtYnJpYW4ud2Vs
dHlAaW50ZWwuY29tLyMyMjYyNDcwNQ0KWzJdOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbWQt
Z2Z4LzIwMjEwMTI2MjE0NjI2LjE2MjYwLTEtYnJpYW4ud2VsdHlAaW50ZWwuY29tLw0KWzNdOiBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9hbWQtZ2Z4L1lDVk9sOCUyRjg3YnFSU1FlaUBwaGVub20u
ZmZ3bGwubG9jYWwvDQoNCkhyaWR5YSBWYWxzYXJhanUgKDUpOg0KICBncHU6IHJmYzogUHJvcG9z
YWwgZm9yIGEgR1BVIGNncm91cCBjb250cm9sbGVyDQogIGNncm91cDogZ3B1OiBBZGQgYSBjZ3Jv
dXAgY29udHJvbGxlciBmb3IgYWxsb2NhdG9yIGF0dHJpYnV0aW9uIG9mIEdQVQ0KICAgIG1lbW9y
eQ0KICBkbWFidWY6IGhlYXBzOiBleHBvcnQgc3lzdGVtX2hlYXAgYnVmZmVycyB3aXRoIEdQVSBj
Z3JvdXAgY2hhcmdpbmcNCiAgZG1hYnVmOiBBZGQgZ3B1IGNncm91cCBjaGFyZ2UgdHJhbnNmZXIg
ZnVuY3Rpb24NCiAgYmluZGVyOiBBZGQgYSBidWZmZXIgZmxhZyB0byByZWxpbnF1aXNoIG93bmVy
c2hpcCBvZiBmZHMNCg0KVC5KLiBNZXJjaWVyICgzKToNCiAgZG1hYnVmOiBVc2UgdGhlIEdQVSBj
Z3JvdXAgY2hhcmdlL3VuY2hhcmdlIEFQSXMNCiAgYmluZGVyOiB1c2UgX19rZXJuZWxfcGlkX3Qg
YW5kIF9fa2VybmVsX3VpZF90IGZvciB1c2Vyc3BhY2UNCiAgc2VsZnRlc3RzOiBBZGQgYmluZGVy
IGNncm91cCBncHUgbWVtb3J5IHRyYW5zZmVyIHRlc3QNCg0KIERvY3VtZW50YXRpb24vZ3B1L3Jm
Yy9ncHUtY2dyb3VwLnJzdCAgICAgICAgICB8IDE4MyArKysrKysrDQogRG9jdW1lbnRhdGlvbi9n
cHUvcmZjL2luZGV4LnJzdCAgICAgICAgICAgICAgIHwgICA0ICsNCiBkcml2ZXJzL2FuZHJvaWQv
YmluZGVyLmMgICAgICAgICAgICAgICAgICAgICAgfCAgMjYgKw0KIGRyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmMgICAgICAgICAgICAgICAgICAgICB8IDEwNyArKysrDQogZHJpdmVycy9kbWEtYnVm
L2RtYS1oZWFwLmMgICAgICAgICAgICAgICAgICAgIHwgIDI3ICsNCiBkcml2ZXJzL2RtYS1idWYv
aGVhcHMvc3lzdGVtX2hlYXAuYyAgICAgICAgICAgfCAgIDMgKw0KIGluY2x1ZGUvbGludXgvY2dy
b3VwX2dwdS5oICAgICAgICAgICAgICAgICAgICB8IDEzOSArKysrKw0KIGluY2x1ZGUvbGludXgv
Y2dyb3VwX3N1YnN5cy5oICAgICAgICAgICAgICAgICB8ICAgNCArDQogaW5jbHVkZS9saW51eC9k
bWEtYnVmLmggICAgICAgICAgICAgICAgICAgICAgIHwgIDIyICstDQogaW5jbHVkZS9saW51eC9k
bWEtaGVhcC5oICAgICAgICAgICAgICAgICAgICAgIHwgIDExICsNCiBpbmNsdWRlL3VhcGkvbGlu
dXgvYW5kcm9pZC9iaW5kZXIuaCAgICAgICAgICAgfCAgIDUgKy0NCiBpbml0L0tjb25maWcgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDcgKw0KIGtlcm5lbC9jZ3JvdXAvTWFr
ZWZpbGUgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMSArDQoga2VybmVsL2Nncm91cC9ncHUu
YyAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMzYyICsrKysrKysrKysrKysNCiAuLi4vc2Vs
ZnRlc3RzL2RyaXZlcnMvYW5kcm9pZC9iaW5kZXIvTWFrZWZpbGUgfCAgIDggKw0KIC4uLi9kcml2
ZXJzL2FuZHJvaWQvYmluZGVyL2JpbmRlcl91dGlsLmMgICAgICB8IDI1NCArKysrKysrKysNCiAu
Li4vZHJpdmVycy9hbmRyb2lkL2JpbmRlci9iaW5kZXJfdXRpbC5oICAgICAgfCAgMzIgKysNCiAu
Li4vc2VsZnRlc3RzL2RyaXZlcnMvYW5kcm9pZC9iaW5kZXIvY29uZmlnICAgfCAgIDQgKw0KIC4u
Li9iaW5kZXIvdGVzdF9kbWFidWZfY2dyb3VwX3RyYW5zZmVyLmMgICAgICB8IDQ4NCArKysrKysr
KysrKysrKysrKysNCiAxOSBmaWxlcyBjaGFuZ2VkLCAxNjc5IGluc2VydGlvbnMoKyksIDQgZGVs
ZXRpb25zKC0pDQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZ3B1L3JmYy9ncHUt
Y2dyb3VwLnJzdA0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2xpbnV4L2Nncm91cF9ncHUu
aA0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBrZXJuZWwvY2dyb3VwL2dwdS5jDQogY3JlYXRlIG1vZGUg
MTAwNjQ0IHRvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2RyaXZlcnMvYW5kcm9pZC9iaW5kZXIvTWFr
ZWZpbGUNCiBjcmVhdGUgbW9kZSAxMDA2NDQgdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvZHJpdmVy
cy9hbmRyb2lkL2JpbmRlci9iaW5kZXJfdXRpbC5jDQogY3JlYXRlIG1vZGUgMTAwNjQ0IHRvb2xz
L3Rlc3Rpbmcvc2VsZnRlc3RzL2RyaXZlcnMvYW5kcm9pZC9iaW5kZXIvYmluZGVyX3V0aWwuaA0K
IGNyZWF0ZSBtb2RlIDEwMDY0NCB0b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9kcml2ZXJzL2FuZHJv
aWQvYmluZGVyL2NvbmZpZw0KIGNyZWF0ZSBtb2RlIDEwMDY0NCB0b29scy90ZXN0aW5nL3NlbGZ0
ZXN0cy9kcml2ZXJzL2FuZHJvaWQvYmluZGVyL3Rlc3RfZG1hYnVmX2Nncm91cF90cmFuc2Zlci5j
DQoNCi0tIA0KMi4zNS4xLjEwMjEuZzM4MTEwMWIwNzUtZ29vZw0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
