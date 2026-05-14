Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id J0b7HuTiBmoBowIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 May 2026 11:09:56 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E9954C0FB
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 May 2026 11:09:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 47C9B404F3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 May 2026 09:02:42 +0000 (UTC)
Received: from mail-yx1-f43.google.com (mail-yx1-f43.google.com [74.125.224.43])
	by lists.linaro.org (Postfix) with ESMTPS id 6BFC83F7F5
	for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2026 18:35:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=WNvN5Otr;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of olvaffe@gmail.com designates 74.125.224.43 as permitted sender) smtp.mailfrom=olvaffe@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-yx1-f43.google.com with SMTP id 956f58d0204a3-65c37eafcbeso10521184d50.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2026 11:35:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778783704; cv=none;
        d=google.com; s=arc-20240605;
        b=ebiz33TQDg0cAzhhJmCzvji1xAdDqGdb0ZDuZml90S+kfIiwpGQ5Zfly9NpGrwB9Yt
         OzUF1b0xRBM+l5tZcCZrLlSvOdH34kBX11RqJJHjEIAl/rKZwN/m6aTrE7hPq/GMXNgd
         4ednCVsUkpO4HJtriBVGnQKZl9lWJxgSjHXAW4SGQfxmykRIusj5QogrWs2nPMoOrclQ
         Sb0cT6UT3wcX2vZ84GA6XWqXguSbCUJDmAp/lfJAA8nMgoRZh+QCvYi7RvoM8C0R8Fwm
         ZcKZAIoxJBMZ1SaNqxkrEpzYDUPc5SjAnIjFqDzGibCcHaNHh3Cb+sMihReZGB1Ph8zC
         ANCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=J//dZe/CVmScZjUaogVteeXVlNwNW3S4gHbIIPdEbvU=;
        fh=qA0mtaApDWQKDWZyFWqiEAzD9bh1dhG4Ysoz96oXz+I=;
        b=g0XUWzUeyCfJAWw6LkNUzqKDvG5S2P11XRbTX7tg9ohHnwguTV0Z0C0PgQRqP4HTCe
         pp7E3LnXBXVdpcyk10LKLERLw/PwZgKJE1yx/7YPFJ0d3c61mgSnKGg2xMltDN3F6GR/
         52gZAo6A9O/Gd/HOfzIAv3E97fEK5lX1s8Yrz6taIbkqN7z9F7jl5FsnA1bBrpqggho6
         tuYwJBOsU9E3z/t+FM732Y6YAAHgr4aOGuzsLiG0Lm68YB261fXllxcLVtLGRZL0bBt1
         1EvK8GiYIw6J4RolEZU2MHgDdVk3YfHQWdVS/tMLqc5fZ4n+1p2bdmH5HcLGeI+Okewk
         oLaQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778783704; x=1779388504; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J//dZe/CVmScZjUaogVteeXVlNwNW3S4gHbIIPdEbvU=;
        b=WNvN5Otre7XDNKsOg5IGnWZiEkWHZOvzOBNEIs5rq0IIUVGhL5VaVCFkTtrrZItgL7
         Z/aPsBJo0yOGlEGN7aQamg/M5n1wk4d5lgt45GijAzKACZ0CLHSeUEzsfk6lQzDKBwJT
         1etxPmVtmk5CKmdjIM3W0bX4MAWdScT/bep6vBGWWWVwyyrRysmZ7FVWYqFCFPPPNKO7
         Yx3UFGpVkYYyTDw4LRa7dLlqna4PA09XumEaKtibp+qhimAdJTUSzN3kjCz2gj3hhFV6
         kxT8Jh9Tk01l6akzVjrXQ+ISgtCOl+Mw/pXPUZY3zCZwcR/0Sn2ykcqx3ioKZzHOF8RO
         8YiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778783704; x=1779388504;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=J//dZe/CVmScZjUaogVteeXVlNwNW3S4gHbIIPdEbvU=;
        b=N1mZxrLrAdlN6d0ecMmJhZaxqXhjHcbe0Pxcu6s0yTXR5Lk0YcCxhlPYLiUWjiioXt
         PA1FRoRcBTR1GWWP8aZyRCteuc93/Ky9G6ROml3xil2/l1756iRhlmeOJkEIaqQQqdPz
         vHYu8vWvgaJYpXP3npggHt+tQ/zEJ8eimCieAQOE2Awx4r5whm8/c3dUYR1o9OgU8gMK
         2rRLQ2hycqHBDUFbjwYNd1WbMA86pvQaTdw4Acfg2di/6cjn0bI8A3l/V5Iw0UcAXXpz
         e2w/QpCTzyLEMVvhwp2w3zE6WC8t9DfeFxSK3/SkXsMHdFzv2lzgtC8S8ByX/bc6U2fM
         NMoQ==
X-Forwarded-Encrypted: i=1; AFNElJ/PT4lnAhSS6NiVxhu5fT0yoKy68XDBlpvdjmyVoSGzfhJQcPm4DveB1DZcLK/Z8cAFdKD/OUJkNw0yruYl@lists.linaro.org
X-Gm-Message-State: AOJu0YyugGEvcdLBCdQw4DwAzR/Drmri1wFJ4RvwdPqD52NZNfStyyoL
	ZQih2uPMlEf7xSjNS4L8K10WMgxL0qatZKtJi+wRbJGFPl4LpDzuaxpAy+M89mvnZZBKowCvBWx
	S/roVQu7qApAFDoWm7AExUNmUIxSlDEM=
X-Gm-Gg: Acq92OG05434vj1NjtOOfpwUeez2BbkSRcbmCYJZuNmpFhpc5dEROcQzNl3SdKyEaUq
	Pn3Kr5EBJ27qDa1SLwG52pjHLte0oAHcwKdGuUyDgdIi6yYLpZsPji0u9HRZKvsZwRGTfu/1Hvv
	wVprE2DXHsCp1iuUWZ/jMpAKbqLOLE/X7LYj8llcJeZ34EB9MF+Qg84eZ2Op+E30KlwWe2tT2XP
	3YnAAYSWm3jU641+f3UCiDhmoLOPsZP2xUJoBfzq5sWpUejL0I5M1wRBWhvvZmOGqEHuGB7ueq/
	Um+btQF0BEqX0gUU8UcbhmECXyuwU1xWK+Phi7gdumgD2Cti92AdYXJM8YmWVqB/d/zvqUzGKQ=
	=
X-Received: by 2002:a05:690c:60c5:b0:7b4:b591:e79a with SMTP id
 00721157ae682-7c95a5700dfmr5776747b3.14.1778783703586; Thu, 14 May 2026
 11:35:03 -0700 (PDT)
MIME-Version: 1.0
References: <20260513-panthor-guard-refactor-v1-0-f2d8c15a97ce@collabora.com> <20260513-panthor-guard-refactor-v1-3-f2d8c15a97ce@collabora.com>
In-Reply-To: <20260513-panthor-guard-refactor-v1-3-f2d8c15a97ce@collabora.com>
From: Chia-I Wu <olvaffe@gmail.com>
Date: Thu, 14 May 2026 11:34:52 -0700
X-Gm-Features: AVHnY4J0ZfS6wqY8kezEbJgIA7LKzsoOFo2DBZGmkU6Uvlx4juh1BMI8h0we3pE
Message-ID: <CAPaKu7TULU6_-8eoygq0svBTbnX-vFvF3sH5hDzyi9kDP-9enQ@mail.gmail.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
X-Spamd-Bar: ----
X-MailFrom: olvaffe@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WFCJBFFVTEPUIH3XWNC547JEG63QK5O2
X-Message-ID-Hash: WFCJBFFVTEPUIH3XWNC547JEG63QK5O2
X-Mailman-Approved-At: Fri, 15 May 2026 09:01:34 +0000
CC: Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/6] drm: Define a conditional guard for drm_dev_{enter,exit}()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WFCJBFFVTEPUIH3XWNC547JEG63QK5O2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 06E9954C0FB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.69 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	FREEMAIL_FROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-0.036];
	FROM_NEQ_ENVFROM(0.00)[olvaffe@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[arm.com,linaro.org,amd.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

T24gV2VkLCBNYXkgMTMsIDIwMjYgYXQgMTA6MjTigK9BTSBCb3JpcyBCcmV6aWxsb24NCjxib3Jp
cy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4gd3JvdGU6DQo+DQo+IERlZmluZSBhIGNvbmRpdGlv
bmFsIGRybV9kZXZfYWNjZXNzIGd1YXJkIHRvIGF1dG9tYXRlIHRoZQ0KPiBkcm1fZGV2X3tlbnRl
cixleGl0fSgpIHNlcXVlbmNlLg0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBCb3JpcyBCcmV6aWxsb24g
PGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPg0KPiAtLS0NCj4gIGluY2x1ZGUvZHJtL2Ry
bV9kcnYuaCB8IDkgKysrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCsp
DQo+DQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fZHJ2LmggYi9pbmNsdWRlL2RybS9k
cm1fZHJ2LmgNCj4gaW5kZXggNDJmYzA4NWY5ODZkLi43OWQxOTU4ZjkzZTQgMTAwNjQ0DQo+IC0t
LSBhL2luY2x1ZGUvZHJtL2RybV9kcnYuaA0KPiArKysgYi9pbmNsdWRlL2RybS9kcm1fZHJ2LmgN
Cj4gQEAgLTQ5MCw2ICs0OTAsMTUgQEAgdm9pZCBkcm1fZGV2X3VucGx1ZyhzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2KTsNCj4gIGludCBkcm1fZGV2X3dlZGdlZF9ldmVudChzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2LCB1bnNpZ25lZCBsb25nIG1ldGhvZCwNCj4gICAgICAgICAgICAgICAgICAgICAgICAg
IHN0cnVjdCBkcm1fd2VkZ2VfdGFza19pbmZvICppbmZvKTsNCj4NCj4gKy8qDQo+ICsgKiBPbmx5
IHRoZSBjb25kaXRpb25hbCBkcm1fZGV2X2FjY2VzcyBndWFyZCBpcyB2YWxpZC4gVGhlIGRybV9k
ZXYgb25lIGlzDQo+ICsgKiBoZXJlIHNvIHdlIGNhbiBleHRlbmQgaXQgd2l0aCBhIGNvbmRpdGlv
bmFsIHZhcmlhbnQuDQo+ICsgKi8NCj4gK0RFRklORV9MT0NLX0dVQVJEXzEoZHJtX2Rldiwgc3Ry
dWN0IGRybV9kZXZpY2UsDQo+ICsgICAgICAgICAgICAgICAgICAgeyBXQVJOX09OKCJVc2UgY29u
ZCBndWFyZHMiKTsgX1QtPmlkeCA9IC0xOyB9LA0KPiArICAgICAgICAgICAgICAgICAgIGRybV9k
ZXZfZXhpdChfVC0+aWR4KSwgaW50IGlkeCk7DQpJZiB0aGlzIGlzIGV2ZXIgbWlzLXVzZWQsIGRy
bV9kZXZfZXhpdCgtMSkgc2VlbXMgdG8gY2F1c2UgT09CIGFjY2Vzcy4NCklzIEJVRyBtb3JlIGFw
cHJvcHJpYXRlIHRoYW4gV0FSTl9PTj8NCg0KPiArREVGSU5FX0xPQ0tfR1VBUkRfMV9DT05EKGRy
bV9kZXYsIF9hY2Nlc3MsIGRybV9kZXZfZW50ZXIoX1QtPmxvY2ssICZfVC0+aWR4KSk7DQo+ICsN
Cj4gIC8qKg0KPiAgICogZHJtX2Rldl9pc191bnBsdWdnZWQgLSBpcyBhIERSTSBkZXZpY2UgdW5w
bHVnZ2VkDQo+ICAgKiBAZGV2OiBEUk0gZGV2aWNlDQo+DQo+IC0tDQo+IDIuNTQuMA0KPg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==
