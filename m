Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D57C46A4B23
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Feb 2023 20:36:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E4E3F44245
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Feb 2023 19:36:30 +0000 (UTC)
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	by lists.linaro.org (Postfix) with ESMTPS id 18E2D3EA2B
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Feb 2023 19:35:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=I6mDs2Tu;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.216.42 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f42.google.com with SMTP id cp7-20020a17090afb8700b0023756229427so11268333pjb.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Feb 2023 11:35:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pnCiHlTZ3XHUfR7rXNQOF8AslwfEMhVF7SVf22K+dwA=;
        b=I6mDs2TufiHGOpRM9erBq02iQ22+V5PWw8V9du6xB+Z0yvBkxQyMt7qnlMSEgeIO0O
         Qs4EWbkmc7NbNwgpoNM36W06HYMEXUolOBzcYA4PsKl9Zj4z/s2nUirhAzhKa1ISdxO6
         XUdR0DPB/dsFQ+OP2wTwLdRQa+zYbOB7fAmgTF7HOFutnypvSToRj0kjQY6TklMT2otY
         7xmabiC02oOcM7YCf8joTl0AyeJOLMYTIxclDdO335JDb655VLZMBfPeBFn7kcAq/7nt
         yFaaY/LNBD5GT6AqGZnJKyLYZFuwPzUQDmao+GOlppq4ntWVmcmNQ656Bm1M66aX7nyI
         qhVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pnCiHlTZ3XHUfR7rXNQOF8AslwfEMhVF7SVf22K+dwA=;
        b=mYMvMeOujOoEiGczjFnDvZyvow//hsbwVec3gfFO69ucnF6Kkuhh6XP4mCGVK55FHo
         FimEncce6WXcTeJh/TL/powmRrM4NWp15DxrjmicSgS8Z+ghBuHvQXBrJX1FM5HJ/9K5
         JulUrFYUNEIw8bTmxYm506zmCRrbo0NElUnfyCFs5lc+X0GMFGWuhuBA78XmTe0bRgJk
         pwXljhN9ncERU28ZBr1d8/13RCgIK84d1AjJ+0yu8tp6MdVX9/wWH8hqQCT0/gPAlEJl
         vVBogBtIFkTiLgEeXNdieQCAYLQ9USeLzfmK8QNFAdx1YGd/N0OILXrDabClfNPbCaOJ
         5LuQ==
X-Gm-Message-State: AO0yUKVugF9/tPKmcjLZd9Yqdm9MUusnbsyXM3cuJ0GRvATF+9AJXAXT
	TodyfPjn2RkteZx6TzgEnM/n5MG04i4=
X-Google-Smtp-Source: AK7set+xjcru5uMJbo51/Coda3pgTL/GPwf8cuOG/WLXI8Ek1zE0cnb0rvcHwjA9q8TU8Dl271GYcA==
X-Received: by 2002:a17:902:db0b:b0:19d:f7e:9864 with SMTP id m11-20020a170902db0b00b0019d0f7e9864mr5610079plx.57.1677526550132;
        Mon, 27 Feb 2023 11:35:50 -0800 (PST)
Received: from localhost ([2a00:79e1:abd:4a00:61b:48ed:72ab:435b])
        by smtp.gmail.com with ESMTPSA id ix1-20020a170902f80100b0019ab58f47a6sm5000335plb.105.2023.02.27.11.35.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Feb 2023 11:35:49 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 27 Feb 2023 11:35:07 -0800
Message-Id: <20230227193535.2822389-2-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230227193535.2822389-1-robdclark@gmail.com>
References: <20230227193535.2822389-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 18E2D3EA2B
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[2a00:79e1:abd:4a00:61b:48ed:72ab:435b:received,209.85.216.42:from];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.42:from];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,linaro.org,lwn.net,padovan.org,vger.kernel.org,lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: QTNBWZXGZCFEZDMQCI25AYLI2HVNTW2H
X-Message-ID-Hash: QTNBWZXGZCFEZDMQCI25AYLI2HVNTW2H
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Jonathan Corbet <corbet@lwn.net>, Gustavo Padovan <gustavo@padovan.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v7 01/15] dma-buf/dma-fence: Add deadline awareness
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QTNBWZXGZCFEZDMQCI25AYLI2HVNTW2H/>
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
ZSBkb2NzDQoNClNpZ25lZC1vZmYtYnk6IFJvYiBDbGFyayA8cm9iZGNsYXJrQGNocm9taXVtLm9y
Zz4NClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+DQotLS0NCiBEb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvZG1hLWJ1Zi5yc3QgfCAgNiArKysN
CiBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgICAgICAgICAgfCA1OSArKysrKysrKysrKysr
KysrKysrKysrKysrKysrDQogaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaCAgICAgICAgICAgIHwg
MjAgKysrKysrKysrKw0KIDMgZmlsZXMgY2hhbmdlZCwgODUgaW5zZXJ0aW9ucygrKQ0KDQpkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL2RtYS1idWYucnN0IGIvRG9jdW1lbnRh
dGlvbi9kcml2ZXItYXBpL2RtYS1idWYucnN0DQppbmRleCA2MjJiODE1NmQyMTIuLjE4M2U0ODBk
OGNlYSAxMDA2NDQNCi0tLSBhL0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdA0K
KysrIGIvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL2RtYS1idWYucnN0DQpAQCAtMTY0LDYgKzE2
NCwxMiBAQCBETUEgRmVuY2UgU2lnbmFsbGluZyBBbm5vdGF0aW9ucw0KIC4uIGtlcm5lbC1kb2M6
OiBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCiAgICA6ZG9jOiBmZW5jZSBzaWduYWxsaW5n
IGFubm90YXRpb24NCiANCitETUEgRmVuY2UgRGVhZGxpbmUgSGludHMNCit+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn4NCisNCisuLiBrZXJuZWwtZG9jOjogZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5j
ZS5jDQorICAgOmRvYzogZGVhZGxpbmUgaGludHMNCisNCiBETUEgRmVuY2VzIEZ1bmN0aW9ucyBS
ZWZlcmVuY2UNCiB+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4NCiANCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNl
LmMNCmluZGV4IDBkZTA0ODJjZDM2ZS4uZTEwM2U4MjFkOTkzIDEwMDY0NA0KLS0tIGEvZHJpdmVy
cy9kbWEtYnVmL2RtYS1mZW5jZS5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMN
CkBAIC05MTIsNiArOTEyLDY1IEBAIGRtYV9mZW5jZV93YWl0X2FueV90aW1lb3V0KHN0cnVjdCBk
bWFfZmVuY2UgKipmZW5jZXMsIHVpbnQzMl90IGNvdW50LA0KIH0NCiBFWFBPUlRfU1lNQk9MKGRt
YV9mZW5jZV93YWl0X2FueV90aW1lb3V0KTsNCiANCisvKioNCisgKiBET0M6IGRlYWRsaW5lIGhp
bnRzDQorICoNCisgKiBJbiBhbiBpZGVhbCB3b3JsZCwgaXQgd291bGQgYmUgcG9zc2libGUgdG8g
cGlwZWxpbmUgYSB3b3JrbG9hZCBzdWZmaWNpZW50bHkNCisgKiB0aGF0IGEgdXRpbGl6YXRpb24g
YmFzZWQgZGV2aWNlIGZyZXF1ZW5jeSBnb3Zlcm5vciBjb3VsZCBhcnJpdmUgYXQgYSBtaW5pbXVt
DQorICogZnJlcXVlbmN5IHRoYXQgbWVldHMgdGhlIHJlcXVpcmVtZW50cyBvZiB0aGUgdXNlLWNh
c2UsIGluIG9yZGVyIHRvIG1pbmltaXplDQorICogcG93ZXIgY29uc3VtcHRpb24uICBCdXQgaW4g
dGhlIHJlYWwgd29ybGQgdGhlcmUgYXJlIG1hbnkgd29ya2xvYWRzIHdoaWNoDQorICogZGVmeSB0
aGlzIGlkZWFsLiAgRm9yIGV4YW1wbGUsIGJ1dCBub3QgbGltaXRlZCB0bzoNCisgKg0KKyAqICog
V29ya2xvYWRzIHRoYXQgcGluZy1wb25nIGJldHdlZW4gZGV2aWNlIGFuZCBDUFUsIHdpdGggYWx0
ZXJuYXRpbmcgcGVyaW9kcw0KKyAqICAgb2YgQ1BVIHdhaXRpbmcgZm9yIGRldmljZSwgYW5kIGRl
dmljZSB3YWl0aW5nIG9uIENQVS4gIFRoaXMgY2FuIHJlc3VsdCBpbg0KKyAqICAgZGV2ZnJlcSBh
bmQgY3B1ZnJlcSBzZWVpbmcgaWRsZSB0aW1lIGluIHRoZWlyIHJlc3BlY3RpdmUgZG9tYWlucyBh
bmQgaW4NCisgKiAgIHJlc3VsdCByZWR1Y2UgZnJlcXVlbmN5Lg0KKyAqDQorICogKiBXb3JrbG9h
ZHMgdGhhdCBpbnRlcmFjdCB3aXRoIGEgcGVyaW9kaWMgdGltZSBiYXNlZCBkZWFkbGluZSwgc3Vj
aCBhcyBkb3VibGUNCisgKiAgIGJ1ZmZlcmVkIEdQVSByZW5kZXJpbmcgdnMgdmJsYW5rIHN5bmMn
ZCBwYWdlIGZsaXBwaW5nLiAgSW4gdGhpcyBzY2VuYXJpbywNCisgKiAgIG1pc3NpbmcgYSB2Ymxh
bmsgZGVhZGxpbmUgcmVzdWx0cyBpbiBhbiAqaW5jcmVhc2UqIGluIGlkbGUgdGltZSBvbiB0aGUg
R1BVDQorICogICAoc2luY2UgaXQgaGFzIHRvIHdhaXQgYW4gYWRkaXRpb25hbCB2YmxhbmsgcGVy
aW9kKSwgc2VuZGluZyBhIHNpbmdsZSB0bw0KKyAqICAgdGhlIEdQVSdzIGRldmZyZXEgdG8gcmVk
dWNlIGZyZXF1ZW5jeSwgd2hlbiBpbiBmYWN0IHRoZSBvcHBvc2l0ZSBpcyB3aGF0IGlzDQorICog
ICBuZWVkZWQuDQorICoNCisgKiBUbyB0aGlzIGVuZCwgZGVhZGxpbmUgaGludChzKSBjYW4gYmUg
c2V0IG9uIGEgJmRtYV9mZW5jZSB2aWEgJmRtYV9mZW5jZV9zZXRfZGVhZGxpbmUuDQorICogVGhl
IGRlYWRsaW5lIGhpbnQgcHJvdmlkZXMgYSB3YXkgZm9yIHRoZSB3YWl0aW5nIGRyaXZlciwgb3Ig
dXNlcnNwYWNlLCB0bw0KKyAqIGNvbnZleSBhbiBhcHByb3ByaWF0ZSBzZW5zZSBvZiB1cmdlbmN5
IHRvIHRoZSBzaWduYWxpbmcgZHJpdmVyLg0KKyAqDQorICogQSBkZWFkbGluZSBoaW50IGlzIGdp
dmVuIGluIGFic29sdXRlIGt0aW1lIChDTE9DS19NT05PVE9OSUMgZm9yIHVzZXJzcGFjZQ0KKyAq
IGZhY2luZyBBUElzKS4gIFRoZSB0aW1lIGNvdWxkIGVpdGhlciBiZSBzb21lIHBvaW50IGluIHRo
ZSBmdXR1cmUgKHN1Y2ggYXMNCisgKiB0aGUgdmJsYW5rIGJhc2VkIGRlYWRsaW5lIGZvciBwYWdl
LWZsaXBwaW5nLCBvciB0aGUgc3RhcnQgb2YgYSBjb21wb3NpdG9yJ3MNCisgKiBjb21wb3NpdGlv
biBjeWNsZSksIG9yIHRoZSBjdXJyZW50IHRpbWUgdG8gaW5kaWNhdGUgYW4gaW1tZWRpYXRlIGRl
YWRsaW5lDQorICogaGludCAoSWUuIGZvcndhcmQgcHJvZ3Jlc3MgY2Fubm90IGJlIG1hZGUgdW50
aWwgdGhpcyBmZW5jZSBpcyBzaWduYWxlZCkuDQorICoNCisgKiBNdWx0aXBsZSBkZWFkbGluZXMg
bWF5IGJlIHNldCBvbiBhIGdpdmVuIGZlbmNlLCBldmVuIGluIHBhcmFsbGVsLiAgU2VlIHRoZQ0K
KyAqIGRvY3VtZW50YXRpb24gZm9yICZkbWFfZmVuY2Vfb3BzLnNldF9kZWFkbGluZS4NCisgKg0K
KyAqIFRoZSBkZWFkbGluZSBoaW50IGlzIGp1c3QgdGhhdCwgYSBoaW50LiAgVGhlIGRyaXZlciB0
aGF0IGNyZWF0ZWQgdGhlIGZlbmNlDQorICogbWF5IHJlYWN0IGJ5IGluY3JlYXNpbmcgZnJlcXVl
bmN5LCBtYWtpbmcgZGlmZmVyZW50IHNjaGVkdWxpbmcgY2hvaWNlcywgZXRjLg0KKyAqIE9yIGRv
aW5nIG5vdGhpbmcgYXQgYWxsLg0KKyAqLw0KKw0KKy8qKg0KKyAqIGRtYV9mZW5jZV9zZXRfZGVh
ZGxpbmUgLSBzZXQgZGVzaXJlZCBmZW5jZS13YWl0IGRlYWRsaW5lIGhpbnQNCisgKiBAZmVuY2U6
ICAgIHRoZSBmZW5jZSB0aGF0IGlzIHRvIGJlIHdhaXRlZCBvbg0KKyAqIEBkZWFkbGluZTogdGhl
IHRpbWUgYnkgd2hpY2ggdGhlIHdhaXRlciBob3BlcyBmb3IgdGhlIGZlbmNlIHRvIGJlDQorICog
ICAgICAgICAgICBzaWduYWxlZA0KKyAqDQorICogR2l2ZSB0aGUgZmVuY2Ugc2lnbmFsZXIgYSBo
aW50IGFib3V0IGFuIHVwY29taW5nIGRlYWRsaW5lLCBzdWNoIGFzDQorICogdmJsYW5rLCBieSB3
aGljaCBwb2ludCB0aGUgd2FpdGVyIHdvdWxkIHByZWZlciB0aGUgZmVuY2UgdG8gYmUNCisgKiBz
aWduYWxlZCBieS4gIFRoaXMgaXMgaW50ZW5kZWQgdG8gZ2l2ZSBmZWVkYmFjayB0byB0aGUgZmVu
Y2Ugc2lnbmFsZXINCisgKiB0byBhaWQgaW4gcG93ZXIgbWFuYWdlbWVudCBkZWNpc2lvbnMsIHN1
Y2ggYXMgYm9vc3RpbmcgR1BVIGZyZXF1ZW5jeQ0KKyAqIGlmIGEgcGVyaW9kaWMgdmJsYW5rIGRl
YWRsaW5lIGlzIGFwcHJvYWNoaW5nIGJ1dCB0aGUgZmVuY2UgaXMgbm90DQorICogeWV0IHNpZ25h
bGVkLi4NCisgKi8NCit2b2lkIGRtYV9mZW5jZV9zZXRfZGVhZGxpbmUoc3RydWN0IGRtYV9mZW5j
ZSAqZmVuY2UsIGt0aW1lX3QgZGVhZGxpbmUpDQorew0KKwlpZiAoZmVuY2UtPm9wcy0+c2V0X2Rl
YWRsaW5lICYmICFkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZmVuY2UpKQ0KKwkJZmVuY2UtPm9wcy0+
c2V0X2RlYWRsaW5lKGZlbmNlLCBkZWFkbGluZSk7DQorfQ0KK0VYUE9SVF9TWU1CT0woZG1hX2Zl
bmNlX3NldF9kZWFkbGluZSk7DQorDQogLyoqDQogICogZG1hX2ZlbmNlX2Rlc2NyaWJlIC0gRHVt
cCBmZW5jZSBkZXNjcmlidGlvbiBpbnRvIHNlcV9maWxlDQogICogQGZlbmNlOiB0aGUgNmZlbmNl
IHRvIGRlc2NyaWJlDQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaCBiL2lu
Y2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCmluZGV4IDc3NWNkYzBiNGYyNC4uODdjMGQ4NDZkYmI0
IDEwMDY0NA0KLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KKysrIGIvaW5jbHVkZS9s
aW51eC9kbWEtZmVuY2UuaA0KQEAgLTI1Nyw2ICsyNTcsMjQgQEAgc3RydWN0IGRtYV9mZW5jZV9v
cHMgew0KIAkgKi8NCiAJdm9pZCAoKnRpbWVsaW5lX3ZhbHVlX3N0cikoc3RydWN0IGRtYV9mZW5j
ZSAqZmVuY2UsDQogCQkJCSAgIGNoYXIgKnN0ciwgaW50IHNpemUpOw0KKw0KKwkvKioNCisJICog
QHNldF9kZWFkbGluZToNCisJICoNCisJICogQ2FsbGJhY2sgdG8gYWxsb3cgYSBmZW5jZSB3YWl0
ZXIgdG8gaW5mb3JtIHRoZSBmZW5jZSBzaWduYWxlciBvZg0KKwkgKiBhbiB1cGNvbWluZyBkZWFk
bGluZSwgc3VjaCBhcyB2YmxhbmssIGJ5IHdoaWNoIHBvaW50IHRoZSB3YWl0ZXINCisJICogd291
bGQgcHJlZmVyIHRoZSBmZW5jZSB0byBiZSBzaWduYWxlZCBieS4gIFRoaXMgaXMgaW50ZW5kZWQg
dG8NCisJICogZ2l2ZSBmZWVkYmFjayB0byB0aGUgZmVuY2Ugc2lnbmFsZXIgdG8gYWlkIGluIHBv
d2VyIG1hbmFnZW1lbnQNCisJICogZGVjaXNpb25zLCBzdWNoIGFzIGJvb3N0aW5nIEdQVSBmcmVx
dWVuY3kuDQorCSAqDQorCSAqIFRoaXMgaXMgY2FsbGVkIHdpdGhvdXQgJmRtYV9mZW5jZS5sb2Nr
IGhlbGQsIGl0IGNhbiBiZSBjYWxsZWQNCisJICogbXVsdGlwbGUgdGltZXMgYW5kIGZyb20gYW55
IGNvbnRleHQuICBMb2NraW5nIGlzIHVwIHRvIHRoZSBjYWxsZWUNCisJICogaWYgaXQgaGFzIHNv
bWUgc3RhdGUgdG8gbWFuYWdlLiAgSWYgbXVsdGlwbGUgZGVhZGxpbmVzIGFyZSBzZXQsDQorCSAq
IHRoZSBleHBlY3RhdGlvbiBpcyB0byB0cmFjayB0aGUgc29vbmVzdCBvbmUuDQorCSAqDQorCSAq
IFRoaXMgY2FsbGJhY2sgaXMgb3B0aW9uYWwuDQorCSAqLw0KKwl2b2lkICgqc2V0X2RlYWRsaW5l
KShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwga3RpbWVfdCBkZWFkbGluZSk7DQogfTsNCiANCiB2
b2lkIGRtYV9mZW5jZV9pbml0KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBjb25zdCBzdHJ1Y3Qg
ZG1hX2ZlbmNlX29wcyAqb3BzLA0KQEAgLTU4Myw2ICs2MDEsOCBAQCBzdGF0aWMgaW5saW5lIHNp
Z25lZCBsb25nIGRtYV9mZW5jZV93YWl0KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBib29sIGlu
dHIpDQogCXJldHVybiByZXQgPCAwID8gcmV0IDogMDsNCiB9DQogDQordm9pZCBkbWFfZmVuY2Vf
c2V0X2RlYWRsaW5lKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBrdGltZV90IGRlYWRsaW5lKTsN
CisNCiBzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVuY2VfZ2V0X3N0dWIodm9pZCk7DQogc3RydWN0
IGRtYV9mZW5jZSAqZG1hX2ZlbmNlX2FsbG9jYXRlX3ByaXZhdGVfc3R1Yih2b2lkKTsNCiB1NjQg
ZG1hX2ZlbmNlX2NvbnRleHRfYWxsb2ModW5zaWduZWQgbnVtKTsNCi0tIA0KMi4zOS4xDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
