Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 91427A76F8E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 31 Mar 2025 22:44:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 835833F5D8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 31 Mar 2025 20:44:11 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by lists.linaro.org (Postfix) with ESMTPS id 877703F5D8
	for <linaro-mm-sig@lists.linaro.org>; Mon, 31 Mar 2025 20:43:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=li4r9+Vh;
	spf=pass (lists.linaro.org: domain of airlied@gmail.com designates 209.85.218.48 as permitted sender) smtp.mailfrom=airlied@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ac298c8fa50so825798066b.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 31 Mar 2025 13:43:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743453835; x=1744058635; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NhmnlMAAlfE+UJZ4bK8dEFy6Cahb9IglOuPC0RLUf2U=;
        b=li4r9+VhsIAeRDvLUQblpxqPqWQMdvapdSXv3LiU1ahsPt45+Ge+eKpPOIQ3cdoTb5
         VW+jtd9kyFhdt2D0T5IHBoNkcDo+O1sXUJaEMf9P712wITQ93r/abNYUevIlTHTvipoP
         tsGzITeiJSvO/ZHt9M+zUTWSPlTqpQvixpKuR1HiXPZnU+VNtt/gGFoH70Jh9cTOdUT2
         JxxIpLyD7f3LB3vaYVSi3K2FVIOrg46ezfuUyIIXzdkJLWzSOERWNin+Sv/X8RPnXT8F
         psfgGYzKlvesfOEx954XKCAeOCMwQJMI4164d5DDGJZlWyZaizM+lE4aPEOGUSIKZ/Z9
         J3gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743453835; x=1744058635;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NhmnlMAAlfE+UJZ4bK8dEFy6Cahb9IglOuPC0RLUf2U=;
        b=sdY82G3/TkG1Imp4aIg38Lxjxdx3/Q0O4LgLreFhNMWafzwEQ7RPrFoFeklwjryaXE
         UdFWDJS1FDj/yW/3On5jngRVGUq/gSG2NGWMTR32uw2tBp/oG+NtQEncD+lm0x5OibYt
         4LlKZdLV8xAKjVKBfRCi4yW28qc2WhWn/fPaz8Ai4/yG2Hzlai+i9pO5D9QvVdNYtUtG
         bMIezs8X6epqLpWNe+m0cboZyQz/tWqvyw9WW8HLhkVntsK3kumttlLyKqAugXG/SxaK
         PkuPzREAzVy789lb2p4X+/a6VQt4q15Na/sfaTTayr2f8t/kAKBqcuAusRt0YjCRYosm
         9pRg==
X-Forwarded-Encrypted: i=1; AJvYcCUhUkxKzNtIJAQpdvjR13SVgrSZ3cf6b+i05vx+2rXgX9l+qVGqeaAUXK8OX/95/fXBgxJBCueWQWi+KQZ1@lists.linaro.org
X-Gm-Message-State: AOJu0YwY1jzvyaxYzjE3WGgQwN/2g8Y0KY99LlA2C8oZFf40y/+eQtrN
	DCjUi268yqHFx/+MJpMsPfTZEKthYY+Y529udBV7Ct50c+8aP8rQQUUuSrFpI8Nh+jc6YkqXwha
	iU5suNL6ehcLJ/SzWVOcMLmM6TrE=
X-Gm-Gg: ASbGnctuHBHa6JpULSn+GqxYsGxpCBxbPuweta5p/ZNv7HxE/HycYotKYcYQX3I+E3o
	teZd6GVr0ZctVhjI1VxhTJq1BIgyrh+ecP2o3DC/CwTkPcKnXnmQVSzvmV6Y1JzUc3aJRU8LjdD
	AY02mdY86xEh2iX2R23QNZvGhD
X-Google-Smtp-Source: AGHT+IGa2ATWEnPtBZKrovC/2tQXOIHQaYNh/KXGz4WWHKDhRqKyDzgdS0ONK7AXu9tKvknpMnQpqfeFIU5BV3Y+5xU=
X-Received: by 2002:a17:906:1718:b0:ac7:391b:e684 with SMTP id
 a640c23a62f3a-ac7391beac4mr794735366b.58.1743453835197; Mon, 31 Mar 2025
 13:43:55 -0700 (PDT)
MIME-Version: 1.0
References: <20250310-dmem-cgroups-v1-0-2984c1bc9312@kernel.org>
 <f5fdc666-dd72-4a4f-9270-b539a3179382@amd.com> <20250310-eccentric-wonderful-puffin-ddbb26@houat>
In-Reply-To: <20250310-eccentric-wonderful-puffin-ddbb26@houat>
From: Dave Airlie <airlied@gmail.com>
Date: Tue, 1 Apr 2025 06:43:43 +1000
X-Gm-Features: AQ5f1Jo63dx6IuKsG5SoyFqmX486Pcaveqb15lGzyp5QvSc5pKKZ1U2dlNV04bE
Message-ID: <CAPM=9tzkLXOz=-3eujUbbjMHunR+_5JZ4oQaqNmbrWWF9WZJ0w@mail.gmail.com>
To: Maxime Ripard <mripard@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 877703F5D8
X-Spamd-Bar: /
X-Spamd-Result: default: False [-1.00 / 15.00];
	BAYES_HAM(-3.00)[99.98%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_7(0.50)[209.85.218.48:from];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	FREEMAIL_CC(0.00)[amd.com,linux-foundation.org,samsung.com,arm.com,linaro.org,collabora.com,google.com,linux.intel.com,suse.de,ffwll.ch,chromium.org,kernel.org,redhat.com,xs4all.nl,ideasonboard.com,kvack.org,vger.kernel.org,lists.linux.dev,lists.freedesktop.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_ALLOW(0.00)[gmail.com:s=20230601];
	RCVD_TLS_LAST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-0.275];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.48:from];
	RCVD_COUNT_ONE(0.00)[1];
	TAGGED_RCPT(0.00)[renesas];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	R_SPF_ALLOW(0.00)[+ip4:209.85.128.0/17];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
Message-ID-Hash: IDE4MFBFONQDK75NNNOVJMPUOPRPFU2A
X-Message-ID-Hash: IDE4MFBFONQDK75NNNOVJMPUOPRPFU2A
X-MailFrom: airlied@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Ben Woodard <woodard@redhat.com>, Hans Verkuil <hverkuil@xs4all.nl>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, linux-mm@kvack.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 00/12] dma: Enable dmem cgroup tracking
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IDE4MFBFONQDK75NNNOVJMPUOPRPFU2A/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCAxMSBNYXIgMjAyNSBhdCAwMDoyNiwgTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJu
ZWwub3JnPiB3cm90ZToNCj4NCj4gSGksDQo+DQo+IE9uIE1vbiwgTWFyIDEwLCAyMDI1IGF0IDAz
OjE2OjUzUE0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+ID4gW0FkZGluZyBCZW4g
c2luY2Ugd2UgYXJlIGN1cnJlbnRseSBpbiB0aGUgbWlkZGxlIG9mIGEgZGlzY3Vzc2lvbg0KPiA+
IHJlZ2FyZGluZyBleGFjdGx5IHRoYXQgcHJvYmxlbV0NCj4gPg0KPiA+IEp1c3QgZm9yIG15IHVu
ZGVyc3RhbmRpbmcgYmVmb3JlIEkgZGVlcCBkaXZlIGludG8gdGhlIGNvZGU6IFRoaXMgdXNlcw0K
PiA+IGEgc2VwYXJhdGUgZG1lbSBjZ3JvdXAgYW5kIGRvZXMgbm90IGFjY291bnQgYWdhaW5zdCBt
ZW1jZywgZG9uJ3QgaXQ/DQo+DQo+IFllcy4gVGhlIG1haW4gcmF0aW9uYWxlIGJlaW5nIHRoYXQg
aXQgZG9lc24ndCBhbHdheXMgbWFrZSBzZW5zZSB0bw0KPiByZWdpc3RlciBhZ2FpbnN0IG1lbWNn
OiBhIGxvdCBvZiBkZXZpY2VzIGFyZSBnb2luZyB0byBhbGxvY2F0ZSBmcm9tDQo+IGRlZGljYXRl
ZCBjaHVua3Mgb2YgbWVtb3J5IHRoYXQgYXJlIGVpdGhlciBjYXJ2ZWQgb3V0IGZyb20gdGhlIG1h
aW4NCj4gbWVtb3J5IGFsbG9jYXRvciwgb3Igbm90IHVuZGVyIExpbnV4IHN1cGVydmlzaW9uIGF0
IGFsbC4NCj4NCj4gQW5kIGlmIHRoZXJlJ3Mgbm8gd2F5IHRvIG1ha2UgaXQgY29uc2lzdGVudCBh
Y3Jvc3MgZHJpdmVycywgaXQncyBub3QgdGhlDQo+IHJpZ2h0IHRvb2wuDQo+DQoNCldoaWxlIEkg
YWdyZWUgb24gdGhhdCwgaWYgYSB1c2VyIGNhbiBjYXVzZSBhIGRldmljZSBkcml2ZXIgdG8gYWxs
b2NhdGUNCm1lbW9yeSB0aGF0IGlzIGFsc28gbWVtb3J5IHRoYXQgbWVtY2cgYWNjb3VudHMsIHRo
ZW4gd2UgaGF2ZSB0bw0KaW50ZXJmYWNlIHdpdGggbWVtY2cgdG8gYWNjb3VudCB0aGF0IG1lbW9y
eS4NCg0KVGhlIHBhdGhvbG9naWNhbCBjYXNlIHdvdWxkIGJlIGEgc2luZ2xlIGFwcGxpY2F0aW9u
IHdhbnRpbmcgdG8gdXNlIDkwJQ0Kb2YgUkFNIGZvciBkZXZpY2UgYWxsb2NhdGlvbnMsIGZyZWVp
bmcgaXQgYWxsLCB0aGVuIHVzaW5nIDkwJSBvZiBSQU0NCmZvciBub3JtYWwgdXNhZ2UuIEhvdyB0
byBjcmVhdGUgYSBwb2xpY3kgdGhhdCB3b3VsZCBhbGxvdyB0aGF0IHdpdGgNCmRtZW0gYW5kIG1l
bWNnIGlzIGRpZmZpY3VsdCwgc2luY2UgaWYgeW91IHNheSB5b3UgY2FuIGRvIDkwJSBvbiBib3Ro
DQp0aGVuIHRoZSB1c2VyIGNhbiBlYXNpbHkgT09NIHRoZSBzeXN0ZW0uDQoNCkRhdmUuDQo+IE1h
eGltZQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
