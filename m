Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3136A6340
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Mar 2023 00:00:19 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 972AB44251
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Feb 2023 23:00:18 +0000 (UTC)
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	by lists.linaro.org (Postfix) with ESMTPS id B5CB73F4CC
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Feb 2023 22:58:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=S3xfHLae;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.216.51 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f51.google.com with SMTP id y2so11435216pjg.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Feb 2023 14:58:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677625120;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KoPu0E+hZKXqbRyVyf9wAXdRgLRPPxN9W/UF2JVsARc=;
        b=S3xfHLaeKjYgZk1FNVBQhVbwYG0x+X3SaOgJr0gCAJyRmMl8jkkVZ8IhKo4Ib74ZBA
         ni9zk7G/C29fMW40VmFSQowEo8PcQ0HtXAtaW4Fa+8SXJxrkZ4hCMcS0+gURNQvahGAy
         3fAiO8vLkSy7vbsvR0Lkqanr88hvW1+IltFnEScm9WllpO4JCq2L5xbJj3u2SXjXhTqK
         tuQMwbV5skoe8P13vdCW3Uj7fDSSyR9gXhzEZmI9DsmKn+6+PllDAYCCbuw2gTC/E55q
         DvYqKm9ZUunt+bcvJjvq6X3oYbwVRCS+IUIb531YwGA4KACDUz8eRKXzsqbSuNfuoaq0
         2Lvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677625120;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KoPu0E+hZKXqbRyVyf9wAXdRgLRPPxN9W/UF2JVsARc=;
        b=gDW3QhAq7L3a23BT/zLzT6C5a3D+aE65GaNDQC0x6RfzH31NvU/7gC0PV4n9cw8YaK
         NLd1xsPts+uqKvbCLNnxwP7l8ee2SgsvS/Y/HloBmwIQyzUPCuKkG2hdnGN4Y/m0XC7q
         m+LVtsaA/ZVTInUqf15xWbx3W7BkG7SiqNh7EdvFYKIJsib2O7WA/G1LW1BkL6PTt0Y0
         s/M6ZjAnOmRoOn3gUMlrtTHAgPDEjuLK/KlKhVKOkNAfVfJBl9u+K1AIt2Rpk916OF1r
         rrpWKyBJ2dJqajGD4+ZLq2nd3L2bdMJA3WjnVafqkQLzpG9I+Wc4S3Arw2N3YrqQJeO/
         O1QA==
X-Gm-Message-State: AO0yUKURNlD6T0qh2E6Q6/xmX/N98CebzHrQ65BhCDEezJDXaZtx/2gE
	f8iHzw9THNwLwWEZp8rIgpw=
X-Google-Smtp-Source: AK7set8/5n84RQQL/x7GZhBILeYJdZKaLs05DUXSDdjbGqmbW315nX4AfBBuMYHMfXVdYN3daLE7rA==
X-Received: by 2002:a17:902:ab1c:b0:19c:94ad:cbe8 with SMTP id ik28-20020a170902ab1c00b0019c94adcbe8mr3786770plb.36.1677625119734;
        Tue, 28 Feb 2023 14:58:39 -0800 (PST)
Received: from localhost ([2a00:79e1:abd:4a00:61b:48ed:72ab:435b])
        by smtp.gmail.com with ESMTPSA id f15-20020a170902684f00b0019a70a42b0asm7050593pln.169.2023.02.28.14.58.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Feb 2023 14:58:39 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Tue, 28 Feb 2023 14:58:05 -0800
Message-Id: <20230228225833.2920879-2-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230228225833.2920879-1-robdclark@gmail.com>
References: <20230228225833.2920879-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B5CB73F4CC
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.216.51:from];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.51:from];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,collabora.com,linaro.org,lwn.net,padovan.org,vger.kernel.org,lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[collabora.com:email,amd.com:email];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: F6QTI22754JCTVTQF5ALTSZCCZ2KDWKC
X-Message-ID-Hash: F6QTI22754JCTVTQF5ALTSZCCZ2KDWKC
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Pekka Paalanen <pekka.paalanen@collabora.com>, Sumit Semwal <sumit.semwal@linaro.org>, Jonathan Corbet <corbet@lwn.net>, Gustavo Padovan <gustavo@padovan.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v8 01/16] dma-buf/dma-fence: Add deadline awareness
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F6QTI22754JCTVTQF5ALTSZCCZ2KDWKC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPg0KDQpBZGQgYSB3YXkgdG8g
aGludCB0byB0aGUgZmVuY2Ugc2lnbmFsZXIgb2YgYW4gdXBjb21pbmcgZGVhZGxpbmUsIHN1Y2gg
YXMNCnZibGFuaywgd2hpY2ggdGhlIGZlbmNlIHdhaXRlciB3b3VsZCBwcmVmZXIgbm90IHRvIG1p
c3MuICBUaGlzIGlzIHRvIGFpZA0KdGhlIGZlbmNlIHNpZ25hbGVyIGluIG1ha2luZyBwb3dlciBt
YW5hZ2VtZW50IGRlY2lzaW9ucywgbGlrZSBib29zdGluZw0KZnJlcXVlbmN5IGFzIHRoZSBkZWFk
bGluZSBhcHByb2FjaGVzIGFuZCBhd2FyZW5lc3Mgb2YgbWlzc2luZyBkZWFkbGluZXMNCnNvIHRo
YXQgY2FuIGJlIGZhY3RvcmVkIGluIHRvIHRoZSBmcmVxdWVuY3kgc2NhbGluZy4NCg0KdjI6IERy
b3AgZG1hX2ZlbmNlOjpkZWFkbGluZSBhbmQgcmVsYXRlZCBsb2dpYyB0byBmaWx0ZXIgZHVwbGlj
YXRlDQogICAgZGVhZGxpbmVzLCB0byBhdm9pZCBpbmNyZWFzaW5nIGRtYV9mZW5jZSBzaXplLiAg
VGhlIGZlbmNlLWNvbnRleHQNCiAgICBpbXBsZW1lbnRhdGlvbiB3aWxsIG5lZWQgc2ltaWxhciBs
b2dpYyB0byB0cmFjayBkZWFkbGluZXMgb2YgYWxsDQogICAgdGhlIGZlbmNlcyBvbiB0aGUgc2Ft
ZSB0aW1lbGluZS4gIFtja29lbmlnXQ0KdjM6IENsYXJpZnkgbG9ja2luZyB3cnQuIHNldF9kZWFk
bGluZSBjYWxsYmFjaw0KdjQ6IENsYXJpZnkgaW4gZG9jcyBjb21tZW50IHRoYXQgdGhpcyBpcyBh
IGhpbnQNCnY1OiBEcm9wIERNQV9GRU5DRV9GTEFHX0hBU19ERUFETElORV9CSVQuDQp2NjogTW9y
ZSBkb2NzDQp2NzogRml4IHR5cG8sIGNsYXJpZnkgcGFzdCBkZWFkbGluZXMNCg0KU2lnbmVkLW9m
Zi1ieTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPg0KUmV2aWV3ZWQtYnk6IENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCkFja2VkLWJ5OiBQZWtr
YSBQYWFsYW5lbiA8cGVra2EucGFhbGFuZW5AY29sbGFib3JhLmNvbT4NCi0tLQ0KIERvY3VtZW50
YXRpb24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdCB8ICA2ICsrKw0KIGRyaXZlcnMvZG1hLWJ1Zi9k
bWEtZmVuY2UuYyAgICAgICAgICB8IDU5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysNCiBp
bmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oICAgICAgICAgICAgfCAyMiArKysrKysrKysrKw0KIDMg
ZmlsZXMgY2hhbmdlZCwgODcgaW5zZXJ0aW9ucygrKQ0KDQpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9kcml2ZXItYXBpL2RtYS1idWYucnN0IGIvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL2Rt
YS1idWYucnN0DQppbmRleCA2MjJiODE1NmQyMTIuLjE4M2U0ODBkOGNlYSAxMDA2NDQNCi0tLSBh
L0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdA0KKysrIGIvRG9jdW1lbnRhdGlv
bi9kcml2ZXItYXBpL2RtYS1idWYucnN0DQpAQCAtMTY0LDYgKzE2NCwxMiBAQCBETUEgRmVuY2Ug
U2lnbmFsbGluZyBBbm5vdGF0aW9ucw0KIC4uIGtlcm5lbC1kb2M6OiBkcml2ZXJzL2RtYS1idWYv
ZG1hLWZlbmNlLmMNCiAgICA6ZG9jOiBmZW5jZSBzaWduYWxsaW5nIGFubm90YXRpb24NCiANCitE
TUEgRmVuY2UgRGVhZGxpbmUgSGludHMNCit+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4NCisNCisu
LiBrZXJuZWwtZG9jOjogZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQorICAgOmRvYzogZGVh
ZGxpbmUgaGludHMNCisNCiBETUEgRmVuY2VzIEZ1bmN0aW9ucyBSZWZlcmVuY2UNCiB+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4NCiANCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYv
ZG1hLWZlbmNlLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCmluZGV4IDBkZTA0ODJj
ZDM2ZS4uZjE3N2M1NjI2OWJiIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5j
ZS5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCkBAIC05MTIsNiArOTEyLDY1
IEBAIGRtYV9mZW5jZV93YWl0X2FueV90aW1lb3V0KHN0cnVjdCBkbWFfZmVuY2UgKipmZW5jZXMs
IHVpbnQzMl90IGNvdW50LA0KIH0NCiBFWFBPUlRfU1lNQk9MKGRtYV9mZW5jZV93YWl0X2FueV90
aW1lb3V0KTsNCiANCisvKioNCisgKiBET0M6IGRlYWRsaW5lIGhpbnRzDQorICoNCisgKiBJbiBh
biBpZGVhbCB3b3JsZCwgaXQgd291bGQgYmUgcG9zc2libGUgdG8gcGlwZWxpbmUgYSB3b3JrbG9h
ZCBzdWZmaWNpZW50bHkNCisgKiB0aGF0IGEgdXRpbGl6YXRpb24gYmFzZWQgZGV2aWNlIGZyZXF1
ZW5jeSBnb3Zlcm5vciBjb3VsZCBhcnJpdmUgYXQgYSBtaW5pbXVtDQorICogZnJlcXVlbmN5IHRo
YXQgbWVldHMgdGhlIHJlcXVpcmVtZW50cyBvZiB0aGUgdXNlLWNhc2UsIGluIG9yZGVyIHRvIG1p
bmltaXplDQorICogcG93ZXIgY29uc3VtcHRpb24uICBCdXQgaW4gdGhlIHJlYWwgd29ybGQgdGhl
cmUgYXJlIG1hbnkgd29ya2xvYWRzIHdoaWNoDQorICogZGVmeSB0aGlzIGlkZWFsLiAgRm9yIGV4
YW1wbGUsIGJ1dCBub3QgbGltaXRlZCB0bzoNCisgKg0KKyAqICogV29ya2xvYWRzIHRoYXQgcGlu
Zy1wb25nIGJldHdlZW4gZGV2aWNlIGFuZCBDUFUsIHdpdGggYWx0ZXJuYXRpbmcgcGVyaW9kcw0K
KyAqICAgb2YgQ1BVIHdhaXRpbmcgZm9yIGRldmljZSwgYW5kIGRldmljZSB3YWl0aW5nIG9uIENQ
VS4gIFRoaXMgY2FuIHJlc3VsdCBpbg0KKyAqICAgZGV2ZnJlcSBhbmQgY3B1ZnJlcSBzZWVpbmcg
aWRsZSB0aW1lIGluIHRoZWlyIHJlc3BlY3RpdmUgZG9tYWlucyBhbmQgaW4NCisgKiAgIHJlc3Vs
dCByZWR1Y2UgZnJlcXVlbmN5Lg0KKyAqDQorICogKiBXb3JrbG9hZHMgdGhhdCBpbnRlcmFjdCB3
aXRoIGEgcGVyaW9kaWMgdGltZSBiYXNlZCBkZWFkbGluZSwgc3VjaCBhcyBkb3VibGUNCisgKiAg
IGJ1ZmZlcmVkIEdQVSByZW5kZXJpbmcgdnMgdmJsYW5rIHN5bmMnZCBwYWdlIGZsaXBwaW5nLiAg
SW4gdGhpcyBzY2VuYXJpbywNCisgKiAgIG1pc3NpbmcgYSB2YmxhbmsgZGVhZGxpbmUgcmVzdWx0
cyBpbiBhbiAqaW5jcmVhc2UqIGluIGlkbGUgdGltZSBvbiB0aGUgR1BVDQorICogICAoc2luY2Ug
aXQgaGFzIHRvIHdhaXQgYW4gYWRkaXRpb25hbCB2YmxhbmsgcGVyaW9kKSwgc2VuZGluZyBhIHNp
Z25hbCB0bw0KKyAqICAgdGhlIEdQVSdzIGRldmZyZXEgdG8gcmVkdWNlIGZyZXF1ZW5jeSwgd2hl
biBpbiBmYWN0IHRoZSBvcHBvc2l0ZSBpcyB3aGF0IGlzDQorICogICBuZWVkZWQuDQorICoNCisg
KiBUbyB0aGlzIGVuZCwgZGVhZGxpbmUgaGludChzKSBjYW4gYmUgc2V0IG9uIGEgJmRtYV9mZW5j
ZSB2aWEgJmRtYV9mZW5jZV9zZXRfZGVhZGxpbmUuDQorICogVGhlIGRlYWRsaW5lIGhpbnQgcHJv
dmlkZXMgYSB3YXkgZm9yIHRoZSB3YWl0aW5nIGRyaXZlciwgb3IgdXNlcnNwYWNlLCB0bw0KKyAq
IGNvbnZleSBhbiBhcHByb3ByaWF0ZSBzZW5zZSBvZiB1cmdlbmN5IHRvIHRoZSBzaWduYWxpbmcg
ZHJpdmVyLg0KKyAqDQorICogQSBkZWFkbGluZSBoaW50IGlzIGdpdmVuIGluIGFic29sdXRlIGt0
aW1lIChDTE9DS19NT05PVE9OSUMgZm9yIHVzZXJzcGFjZQ0KKyAqIGZhY2luZyBBUElzKS4gIFRo
ZSB0aW1lIGNvdWxkIGVpdGhlciBiZSBzb21lIHBvaW50IGluIHRoZSBmdXR1cmUgKHN1Y2ggYXMN
CisgKiB0aGUgdmJsYW5rIGJhc2VkIGRlYWRsaW5lIGZvciBwYWdlLWZsaXBwaW5nLCBvciB0aGUg
c3RhcnQgb2YgYSBjb21wb3NpdG9yJ3MNCisgKiBjb21wb3NpdGlvbiBjeWNsZSksIG9yIHRoZSBj
dXJyZW50IHRpbWUgdG8gaW5kaWNhdGUgYW4gaW1tZWRpYXRlIGRlYWRsaW5lDQorICogaGludCAo
SWUuIGZvcndhcmQgcHJvZ3Jlc3MgY2Fubm90IGJlIG1hZGUgdW50aWwgdGhpcyBmZW5jZSBpcyBz
aWduYWxlZCkuDQorICoNCisgKiBNdWx0aXBsZSBkZWFkbGluZXMgbWF5IGJlIHNldCBvbiBhIGdp
dmVuIGZlbmNlLCBldmVuIGluIHBhcmFsbGVsLiAgU2VlIHRoZQ0KKyAqIGRvY3VtZW50YXRpb24g
Zm9yICZkbWFfZmVuY2Vfb3BzLnNldF9kZWFkbGluZS4NCisgKg0KKyAqIFRoZSBkZWFkbGluZSBo
aW50IGlzIGp1c3QgdGhhdCwgYSBoaW50LiAgVGhlIGRyaXZlciB0aGF0IGNyZWF0ZWQgdGhlIGZl
bmNlDQorICogbWF5IHJlYWN0IGJ5IGluY3JlYXNpbmcgZnJlcXVlbmN5LCBtYWtpbmcgZGlmZmVy
ZW50IHNjaGVkdWxpbmcgY2hvaWNlcywgZXRjLg0KKyAqIE9yIGRvaW5nIG5vdGhpbmcgYXQgYWxs
Lg0KKyAqLw0KKw0KKy8qKg0KKyAqIGRtYV9mZW5jZV9zZXRfZGVhZGxpbmUgLSBzZXQgZGVzaXJl
ZCBmZW5jZS13YWl0IGRlYWRsaW5lIGhpbnQNCisgKiBAZmVuY2U6ICAgIHRoZSBmZW5jZSB0aGF0
IGlzIHRvIGJlIHdhaXRlZCBvbg0KKyAqIEBkZWFkbGluZTogdGhlIHRpbWUgYnkgd2hpY2ggdGhl
IHdhaXRlciBob3BlcyBmb3IgdGhlIGZlbmNlIHRvIGJlDQorICogICAgICAgICAgICBzaWduYWxl
ZA0KKyAqDQorICogR2l2ZSB0aGUgZmVuY2Ugc2lnbmFsZXIgYSBoaW50IGFib3V0IGFuIHVwY29t
aW5nIGRlYWRsaW5lLCBzdWNoIGFzDQorICogdmJsYW5rLCBieSB3aGljaCBwb2ludCB0aGUgd2Fp
dGVyIHdvdWxkIHByZWZlciB0aGUgZmVuY2UgdG8gYmUNCisgKiBzaWduYWxlZCBieS4gIFRoaXMg
aXMgaW50ZW5kZWQgdG8gZ2l2ZSBmZWVkYmFjayB0byB0aGUgZmVuY2Ugc2lnbmFsZXINCisgKiB0
byBhaWQgaW4gcG93ZXIgbWFuYWdlbWVudCBkZWNpc2lvbnMsIHN1Y2ggYXMgYm9vc3RpbmcgR1BV
IGZyZXF1ZW5jeQ0KKyAqIGlmIGEgcGVyaW9kaWMgdmJsYW5rIGRlYWRsaW5lIGlzIGFwcHJvYWNo
aW5nIGJ1dCB0aGUgZmVuY2UgaXMgbm90DQorICogeWV0IHNpZ25hbGVkLi4NCisgKi8NCit2b2lk
IGRtYV9mZW5jZV9zZXRfZGVhZGxpbmUoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGt0aW1lX3Qg
ZGVhZGxpbmUpDQorew0KKwlpZiAoZmVuY2UtPm9wcy0+c2V0X2RlYWRsaW5lICYmICFkbWFfZmVu
Y2VfaXNfc2lnbmFsZWQoZmVuY2UpKQ0KKwkJZmVuY2UtPm9wcy0+c2V0X2RlYWRsaW5lKGZlbmNl
LCBkZWFkbGluZSk7DQorfQ0KK0VYUE9SVF9TWU1CT0woZG1hX2ZlbmNlX3NldF9kZWFkbGluZSk7
DQorDQogLyoqDQogICogZG1hX2ZlbmNlX2Rlc2NyaWJlIC0gRHVtcCBmZW5jZSBkZXNjcmlidGlv
biBpbnRvIHNlcV9maWxlDQogICogQGZlbmNlOiB0aGUgNmZlbmNlIHRvIGRlc2NyaWJlDQpkaWZm
IC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaCBiL2luY2x1ZGUvbGludXgvZG1hLWZl
bmNlLmgNCmluZGV4IDc3NWNkYzBiNGYyNC4uZDU0YjU5NWEwZmUwIDEwMDY0NA0KLS0tIGEvaW5j
bHVkZS9saW51eC9kbWEtZmVuY2UuaA0KKysrIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0K
QEAgLTI1Nyw2ICsyNTcsMjYgQEAgc3RydWN0IGRtYV9mZW5jZV9vcHMgew0KIAkgKi8NCiAJdm9p
ZCAoKnRpbWVsaW5lX3ZhbHVlX3N0cikoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsDQogCQkJCSAg
IGNoYXIgKnN0ciwgaW50IHNpemUpOw0KKw0KKwkvKioNCisJICogQHNldF9kZWFkbGluZToNCisJ
ICoNCisJICogQ2FsbGJhY2sgdG8gYWxsb3cgYSBmZW5jZSB3YWl0ZXIgdG8gaW5mb3JtIHRoZSBm
ZW5jZSBzaWduYWxlciBvZg0KKwkgKiBhbiB1cGNvbWluZyBkZWFkbGluZSwgc3VjaCBhcyB2Ymxh
bmssIGJ5IHdoaWNoIHBvaW50IHRoZSB3YWl0ZXINCisJICogd291bGQgcHJlZmVyIHRoZSBmZW5j
ZSB0byBiZSBzaWduYWxlZCBieS4gIFRoaXMgaXMgaW50ZW5kZWQgdG8NCisJICogZ2l2ZSBmZWVk
YmFjayB0byB0aGUgZmVuY2Ugc2lnbmFsZXIgdG8gYWlkIGluIHBvd2VyIG1hbmFnZW1lbnQNCisJ
ICogZGVjaXNpb25zLCBzdWNoIGFzIGJvb3N0aW5nIEdQVSBmcmVxdWVuY3kuDQorCSAqDQorCSAq
IFRoaXMgaXMgY2FsbGVkIHdpdGhvdXQgJmRtYV9mZW5jZS5sb2NrIGhlbGQsIGl0IGNhbiBiZSBj
YWxsZWQNCisJICogbXVsdGlwbGUgdGltZXMgYW5kIGZyb20gYW55IGNvbnRleHQuICBMb2NraW5n
IGlzIHVwIHRvIHRoZSBjYWxsZWUNCisJICogaWYgaXQgaGFzIHNvbWUgc3RhdGUgdG8gbWFuYWdl
LiAgSWYgbXVsdGlwbGUgZGVhZGxpbmVzIGFyZSBzZXQsDQorCSAqIHRoZSBleHBlY3RhdGlvbiBp
cyB0byB0cmFjayB0aGUgc29vbmVzdCBvbmUuICBJZiB0aGUgZGVhZGxpbmUgaXMNCisJICogYmVm
b3JlIHRoZSBjdXJyZW50IHRpbWUsIGl0IHNob3VsZCBiZSBpbnRlcnByZXRlZCBhcyBhbiBpbW1l
ZGlhdGUNCisJICogZGVhZGxpbmUuDQorCSAqDQorCSAqIFRoaXMgY2FsbGJhY2sgaXMgb3B0aW9u
YWwuDQorCSAqLw0KKwl2b2lkICgqc2V0X2RlYWRsaW5lKShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5j
ZSwga3RpbWVfdCBkZWFkbGluZSk7DQogfTsNCiANCiB2b2lkIGRtYV9mZW5jZV9pbml0KHN0cnVj
dCBkbWFfZmVuY2UgKmZlbmNlLCBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyAqb3BzLA0KQEAg
LTU4Myw2ICs2MDMsOCBAQCBzdGF0aWMgaW5saW5lIHNpZ25lZCBsb25nIGRtYV9mZW5jZV93YWl0
KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBib29sIGludHIpDQogCXJldHVybiByZXQgPCAwID8g
cmV0IDogMDsNCiB9DQogDQordm9pZCBkbWFfZmVuY2Vfc2V0X2RlYWRsaW5lKHN0cnVjdCBkbWFf
ZmVuY2UgKmZlbmNlLCBrdGltZV90IGRlYWRsaW5lKTsNCisNCiBzdHJ1Y3QgZG1hX2ZlbmNlICpk
bWFfZmVuY2VfZ2V0X3N0dWIodm9pZCk7DQogc3RydWN0IGRtYV9mZW5jZSAqZG1hX2ZlbmNlX2Fs
bG9jYXRlX3ByaXZhdGVfc3R1Yih2b2lkKTsNCiB1NjQgZG1hX2ZlbmNlX2NvbnRleHRfYWxsb2Mo
dW5zaWduZWQgbnVtKTsNCi0tIA0KMi4zOS4xDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
