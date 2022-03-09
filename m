Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 469E64EAD02
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 14:21:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 745003EC0B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 12:21:02 +0000 (UTC)
Received: from mail-yw1-f202.google.com (mail-yw1-f202.google.com [209.85.128.202])
	by lists.linaro.org (Postfix) with ESMTPS id C9B6E3EEA1
	for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Mar 2022 16:52:27 +0000 (UTC)
Received: by mail-yw1-f202.google.com with SMTP id 00721157ae682-2dcfa6bab2aso18700317b3.22
        for <linaro-mm-sig@lists.linaro.org>; Wed, 09 Mar 2022 08:52:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc
         :content-transfer-encoding;
        bh=b9rEV04bDQiBKY+clzVAAUwX0PEEzTz5v0uyyD6Ky9s=;
        b=XPzsQHeRUNiY59+5nJm7mrBdRIxBkcExNssQMplqKGecYVGAuoWNOzfsQ/CRHGT3Eb
         L8N78lNgsuxsZppqNYdkHimSfJaRLuWqSnEH8yK3GxU8bsscjb4ePNbipVnp6tCT8IVF
         UaUIxl8y648Eqm5tHOyCh2213Fk/nnv9V9GWAOVVkJeRQIHfCE/FgeEvesm4pyz9OWp/
         jT/gMhsLrbq/1Tv7Gt/fcrwf/RPUzCl8lb+iIaUhtm6WEF9fuNYOWUF4Z36cCRwe+NRS
         IxH3+7RqukqcHYT+xGqH3TFqjhzJCVwErPB8Qpl0MdPoc7qtVg+T57NWV82loz0fFGAg
         92Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :content-transfer-encoding;
        bh=b9rEV04bDQiBKY+clzVAAUwX0PEEzTz5v0uyyD6Ky9s=;
        b=tURw97SvdDvuiQ1hQEqqVny3xoAkf8XtESyrTK1nFtRJ2eaMgQtfHSd8gVGlWmnvcF
         1TNNGBywllvT8zCNpYoNO3d4JK4nmSDi6B/DU7coTcdmpJ4TyVWbQrBHCOAQ0y+8X5NF
         /Zi+rYVvTXQ/kTeBXRCdimr+HtDD4taUeIyRAQURSLjJlqzYDzccF6zbE8iCCp0ZqmzA
         rAuQPJpp9yMHiPx3wp4W4tNd+FLSq/t21mcK4H8So6jgnLe9Wte0vwhVK+3z3B6Pw9T8
         lUeBR1Z/4M976jOY3JGpBd9p3bQwp1R6FdkC6o6Rl1iZ7NzqHgqQTrgSVWe8bheUfnrZ
         yxMQ==
X-Gm-Message-State: AOAM531mvIDNieGXcy3cXFh5A305y8zoE3/7gB+TjUT20luN0Bv2WsrF
	9y788XWw+l7+02ABXgM0pHrfkKYaX1tvBUE=
X-Google-Smtp-Source: ABdhPJwRyTuMCrRO/Vp1TWAVYo92UjVf5vBh6X32/4NRRO9jJMcVfdRLSkjJkXNfpEsU2vu7P7SPJtB45/CUe/4=
X-Received: from tj2.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:187])
 (user=tjmercier job=sendgmr) by 2002:a25:3494:0:b0:628:7de8:fe8c with SMTP id
 b142-20020a253494000000b006287de8fe8cmr566332yba.68.1646844747351; Wed, 09
 Mar 2022 08:52:27 -0800 (PST)
Date: Wed,  9 Mar 2022 16:52:10 +0000
Message-Id: <20220309165222.2843651-1-tjmercier@google.com>
Mime-Version: 1.0
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
X-MailFrom: 3S9soYgkKDbwvlogtekgtiqqing.eqonkpctq-oo-ukinkuvu.nkpctq.qti@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: IPBGQAWGKIBCRNHGVPEKQCEEZTTB6D2L
X-Message-ID-Hash: IPBGQAWGKIBCRNHGVPEKQCEEZTTB6D2L
X-Mailman-Approved-At: Tue, 29 Mar 2022 12:20:47 +0000
CC: kaleshsingh@google.com, Kenny.Ho@amd.com, "T.J. Mercier" <tjmercier@google.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, linux-kselftest@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC v3 0/8] Proposal for a GPU cgroup controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IPBGQAWGKIBCRNHGVPEKQCEEZTTB6D2L/>
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
cmVzb3VyY2UgbGltaXQgZW5mb3JjZW1lbnRzLg0KDQpDaGFuZ2Vsb2c6DQp2MzoNClJlbW92ZSBV
cHN0cmVhbWluZyBQbGFuIGZyb20gZ3B1LWNncm91cC5yc3QgcGVyIEpvaG4gU3R1bHR6DQoNClVz
ZSBtb3JlIGNvbW1vbiBkdWFsIGF1dGhvciBjb21taXQgbWVzc2FnZSBmb3JtYXQgcGVyIEpvaG4g
U3R1bHR6DQoNClJlbW92ZSBhbmRyb2lkIGZyb20gYmluZGVyIGNoYW5nZXMgdGl0bGUgcGVyIFRv
ZGQgS2pvcw0KDQpBZGQgYSBrc2VsZnRlc3QgZm9yIHRoaXMgbmV3IGJlaGF2aW9yIHBlciBHcmVn
IEtyb2FoLUhhcnRtYW4NCg0KSW5jbHVkZSBkZXRhaWxzIG9uIGJlaGF2aW9yIGZvciBhbGwgY29t
YmluYXRpb25zIG9mIGtlcm5lbC91c2Vyc3BhY2UNCnZlcnNpb25zIGluIGNoYW5nZWxvZyAodGhh
bmtzIFN1cmVuIEJhZ2hkYXNhcnlhbikgcGVyIEdyZWcgS3JvYWgtSGFydG1hbi4NCg0KRml4IHBp
ZCBhbmQgdWlkIHR5cGVzIGluIGJpbmRlciBVQVBJIGhlYWRlcg0KDQp2MjoNClNlZSB0aGUgcHJl
dmlvdXMgcmV2aXNpb24gb2YgdGhpcyBjaGFuZ2Ugc3VibWl0dGVkIGJ5IEhyaWR5YSBWYWxzYXJh
anUNCmF0OiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMjAxMTUwMTA2MjIuMzE4NTky
MS0xLWhyaWR5YUBnb29nbGUuY29tLw0KDQpNb3ZlIGRtYS1idWYgY2dyb3VwIGNoYXJnZSB0cmFu
c2ZlciBmcm9tIGEgZG1hX2J1Zl9vcCBkZWZpbmVkIGJ5IGV2ZXJ5DQpoZWFwIHRvIGEgc2luZ2xl
IGRtYS1idWYgZnVuY3Rpb24gZm9yIGFsbCBoZWFwcyBwZXIgRGFuaWVsIFZldHRlciBhbmQNCkNo
cmlzdGlhbiBLw7ZuaWcuIFBvaW50ZXJzIHRvIHN0cnVjdCBncHVjZyBhbmQgc3RydWN0IGdwdWNn
X2RldmljZQ0KdHJhY2tpbmcgdGhlIGN1cnJlbnQgYXNzb2NpYXRpb25zIHdlcmUgYWRkZWQgdG8g
dGhlIGRtYV9idWYgc3RydWN0IHRvDQphY2hpZXZlIHRoaXMuDQoNCkZpeCBpbmNvcnJlY3QgS2Nv
bmZpZyBoZWxwIHNlY3Rpb24gaW5kZW50YXRpb24gcGVyIFJhbmR5IER1bmxhcC4NCg0KSGlzdG9y
eSBvZiB0aGUgR1BVIGNncm91cCBjb250cm9sbGVyDQo9PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT0NClRoZSBHUFUvRFJNIGNncm91cCBjb250cm9sbGVyIGNhbWUgaW50byBiZWlu
ZyB3aGVuIGEgY29uc2Vuc3VzWzFdDQp3YXMgcmVhY2hlZCB0aGF0IHRoZSByZXNvdXJjZXMgaXQg
dHJhY2tlZCB3ZXJlIHVuc3VpdGFibGUgdG8gYmUgaW50ZWdyYXRlZA0KaW50byBtZW1jZy4gT3Jp
Z2luYWxseSwgdGhlIHByb3Bvc2VkIGNvbnRyb2xsZXIgd2FzIHNwZWNpZmljIHRvIHRoZSBEUk0N
CnN1YnN5c3RlbSBhbmQgd2FzIGludGVuZGVkIHRvIHRyYWNrIEdFTSBidWZmZXJzIGFuZCBHUFUt
c3BlY2lmaWMNCnJlc291cmNlc1syXS4gSW4gb3JkZXIgdG8gaGVscCBlc3RhYmxpc2ggYSB1bmlm
aWVkIG1lbW9yeSBhY2NvdW50aW5nIG1vZGVsDQpmb3IgYWxsIEdQVSBhbmQgYWxsIHJlbGF0ZWQg
c3Vic3lzdGVtcywgRGFuaWVsIFZldHRlciBwdXQgZm9ydGggYQ0Kc3VnZ2VzdGlvbiB0byBtb3Zl
IGl0IG91dCBvZiB0aGUgRFJNIHN1YnN5c3RlbSBzbyB0aGF0IGl0IGNhbiBiZSB1c2VkIGJ5DQpv
dGhlciBETUEtQlVGIGV4cG9ydGVycyBhcyB3ZWxsWzNdLiBUaGlzIFJGQyBwcm9wb3NlcyBhbiBp
bnRlcmZhY2UgdGhhdA0KZG9lcyB0aGUgc2FtZS4NCg0KWzFdOiBodHRwczovL3BhdGNod29yay5r
ZXJuZWwub3JnL3Byb2plY3QvZHJpLWRldmVsL2NvdmVyLzIwMTkwNTAxMTQwNDM4Ljk1MDYtMS1i
cmlhbi53ZWx0eUBpbnRlbC5jb20vIzIyNjI0NzA1DQpbMl06IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2FtZC1nZngvMjAyMTAxMjYyMTQ2MjYuMTYyNjAtMS1icmlhbi53ZWx0eUBpbnRlbC5jb20v
DQpbM106IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FtZC1nZngvWUNWT2w4JTJGODdicVJTUWVp
QHBoZW5vbS5mZndsbC5sb2NhbC8NCg0KSHJpZHlhIFZhbHNhcmFqdSAoNSk6DQogIGdwdTogcmZj
OiBQcm9wb3NhbCBmb3IgYSBHUFUgY2dyb3VwIGNvbnRyb2xsZXINCiAgY2dyb3VwOiBncHU6IEFk
ZCBhIGNncm91cCBjb250cm9sbGVyIGZvciBhbGxvY2F0b3IgYXR0cmlidXRpb24gb2YgR1BVDQog
ICAgbWVtb3J5DQogIGRtYWJ1ZjogaGVhcHM6IGV4cG9ydCBzeXN0ZW1faGVhcCBidWZmZXJzIHdp
dGggR1BVIGNncm91cCBjaGFyZ2luZw0KICBkbWFidWY6IEFkZCBncHUgY2dyb3VwIGNoYXJnZSB0
cmFuc2ZlciBmdW5jdGlvbg0KICBiaW5kZXI6IEFkZCBhIGJ1ZmZlciBmbGFnIHRvIHJlbGlucXVp
c2ggb3duZXJzaGlwIG9mIGZkcw0KDQpULkouIE1lcmNpZXIgKDMpOg0KICBkbWFidWY6IFVzZSB0
aGUgR1BVIGNncm91cCBjaGFyZ2UvdW5jaGFyZ2UgQVBJcw0KICBiaW5kZXI6IHVzZSBfX2tlcm5l
bF9waWRfdCBhbmQgX19rZXJuZWxfdWlkX3QgZm9yIHVzZXJzcGFjZQ0KICBzZWxmdGVzdHM6IEFk
ZCBiaW5kZXIgY2dyb3VwIGdwdSBtZW1vcnkgdHJhbnNmZXIgdGVzdA0KDQogRG9jdW1lbnRhdGlv
bi9ncHUvcmZjL2dwdS1jZ3JvdXAucnN0ICAgICAgICAgIHwgMTgzICsrKysrKysNCiBEb2N1bWVu
dGF0aW9uL2dwdS9yZmMvaW5kZXgucnN0ICAgICAgICAgICAgICAgfCAgIDQgKw0KIGRyaXZlcnMv
YW5kcm9pZC9iaW5kZXIuYyAgICAgICAgICAgICAgICAgICAgICB8ICAyNiArDQogZHJpdmVycy9k
bWEtYnVmL2RtYS1idWYuYyAgICAgICAgICAgICAgICAgICAgIHwgMTAwICsrKysNCiBkcml2ZXJz
L2RtYS1idWYvZG1hLWhlYXAuYyAgICAgICAgICAgICAgICAgICAgfCAgMjcgKw0KIGRyaXZlcnMv
ZG1hLWJ1Zi9oZWFwcy9zeXN0ZW1faGVhcC5jICAgICAgICAgICB8ICAgMyArDQogaW5jbHVkZS9s
aW51eC9jZ3JvdXBfZ3B1LmggICAgICAgICAgICAgICAgICAgIHwgMTI3ICsrKysrDQogaW5jbHVk
ZS9saW51eC9jZ3JvdXBfc3Vic3lzLmggICAgICAgICAgICAgICAgIHwgICA0ICsNCiBpbmNsdWRl
L2xpbnV4L2RtYS1idWYuaCAgICAgICAgICAgICAgICAgICAgICAgfCAgMjIgKy0NCiBpbmNsdWRl
L2xpbnV4L2RtYS1oZWFwLmggICAgICAgICAgICAgICAgICAgICAgfCAgMTEgKw0KIGluY2x1ZGUv
dWFwaS9saW51eC9hbmRyb2lkL2JpbmRlci5oICAgICAgICAgICB8ICAgNSArLQ0KIGluaXQvS2Nv
bmZpZyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgNyArDQoga2VybmVsL2Nn
cm91cC9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsNCiBrZXJuZWwvY2dy
b3VwL2dwdS5jICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAzMDQgKysrKysrKysrKysNCiAu
Li4vc2VsZnRlc3RzL2RyaXZlcnMvYW5kcm9pZC9iaW5kZXIvTWFrZWZpbGUgfCAgIDggKw0KIC4u
Li9kcml2ZXJzL2FuZHJvaWQvYmluZGVyL2JpbmRlcl91dGlsLmMgICAgICB8IDI1NCArKysrKysr
KysNCiAuLi4vZHJpdmVycy9hbmRyb2lkL2JpbmRlci9iaW5kZXJfdXRpbC5oICAgICAgfCAgMzIg
KysNCiAuLi4vc2VsZnRlc3RzL2RyaXZlcnMvYW5kcm9pZC9iaW5kZXIvY29uZmlnICAgfCAgIDQg
Kw0KIC4uLi9iaW5kZXIvdGVzdF9kbWFidWZfY2dyb3VwX3RyYW5zZmVyLmMgICAgICB8IDQ4MCAr
KysrKysrKysrKysrKysrKysNCiAxOSBmaWxlcyBjaGFuZ2VkLCAxNTk4IGluc2VydGlvbnMoKyks
IDQgZGVsZXRpb25zKC0pDQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZ3B1L3Jm
Yy9ncHUtY2dyb3VwLnJzdA0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2xpbnV4L2Nncm91
cF9ncHUuaA0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBrZXJuZWwvY2dyb3VwL2dwdS5jDQogY3JlYXRl
IG1vZGUgMTAwNjQ0IHRvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2RyaXZlcnMvYW5kcm9pZC9iaW5k
ZXIvTWFrZWZpbGUNCiBjcmVhdGUgbW9kZSAxMDA2NDQgdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMv
ZHJpdmVycy9hbmRyb2lkL2JpbmRlci9iaW5kZXJfdXRpbC5jDQogY3JlYXRlIG1vZGUgMTAwNjQ0
IHRvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2RyaXZlcnMvYW5kcm9pZC9iaW5kZXIvYmluZGVyX3V0
aWwuaA0KIGNyZWF0ZSBtb2RlIDEwMDY0NCB0b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9kcml2ZXJz
L2FuZHJvaWQvYmluZGVyL2NvbmZpZw0KIGNyZWF0ZSBtb2RlIDEwMDY0NCB0b29scy90ZXN0aW5n
L3NlbGZ0ZXN0cy9kcml2ZXJzL2FuZHJvaWQvYmluZGVyL3Rlc3RfZG1hYnVmX2Nncm91cF90cmFu
c2Zlci5jDQoNCi0tIA0KMi4zNS4xLjYxNi5nMGJkY2JiNDQ2NC1nb29nDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
