Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF5CA882FA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Apr 2025 15:48:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9C2854600F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Apr 2025 13:48:41 +0000 (UTC)
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com [209.85.221.174])
	by lists.linaro.org (Postfix) with ESMTPS id 6B7A2454D5
	for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Apr 2025 13:48:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=Pq11M46U;
	spf=pass (lists.linaro.org: domain of alexdeucher@gmail.com designates 209.85.221.174 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-523f5836aaeso215060e0c.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Apr 2025 06:48:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744638503; x=1745243303; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9gg6c9JaP3fAvNMBtbYiSQTaF78FsgYOrIyM/tQBJqE=;
        b=Pq11M46U4fuLgLYEjMFcHYjs5Ros8zRQtUHb5ybLIJ9vvm1bBuMCk93mQTBpOlWLee
         Z0I/NemR+FvdPSVdzizIG5t02iwC9UBvbx8XUhZ7Vd9vGWA/d5joE/5uscuBygc3PqB/
         G5RP7+M+s7HwMz0ZejqFK7TqvRviXsIKtU3m2bBZ6liRk8m8QmV5m19dsn/d2fgRmtan
         m0wQtXOfKm/Fry9/Ia7W4pKLqZ9IRevN9HqQiwkMmaO7mdY9pL/b6Bdl9VNkIrYwr1Q+
         MBJQbt7mmq/tpyWgrDBYCIIR27G3oIkGWiqTgEZNQ+UPJ0WGk3VuijwOAi+2aBq8cpKn
         kNeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744638503; x=1745243303;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9gg6c9JaP3fAvNMBtbYiSQTaF78FsgYOrIyM/tQBJqE=;
        b=cGxluV5mvfGzABy3WXQFGMVMWTpWPy9SgQbrhDQbKECato9KOS6cLmZW6u4n0xEkeM
         LtD8EdOkymxRyYHrowNk0dt/kZ5CruYp9WTn34e8UsXa1xhaKbFxRyKhUFJL8+hhauBK
         pbE//1LO04hPRV982YYhl5xd5YiTrcWQHv3j9RnwZzoYN+Wq1cnyrxsz8tsNywFlVR9j
         sWkRQEQzYY3Obfgr3YBvZiQspSr/bvkNUty3nAASKoo0bwLtDu5d3unhn8ielpwPfId+
         KNHiwh7FqYbdeq6IU57dGCNf1px25Yv8a6+hIqStRkTaLSR5OOeFiChZHq3DWCXZFlVl
         OREA==
X-Forwarded-Encrypted: i=1; AJvYcCUxOzzgjEvxaJyWGCVpPfwCBerb04ERZ2Tl+t/m9roy6P2eKD+pituM6nMdYJuSnOWguXPkt8RpEPhJU51O@lists.linaro.org
X-Gm-Message-State: AOJu0YytTeQReqbc0BDVHQt9+aHoCSUGbDOWKB4XQuhkCJE4YfSek3Yu
	fzF2bFdbl747xUEa9M7GFsPOQeka6gNQNx/Xr2iKMhrx/JtNS1K8Ffps6dHIcRDqG86+rF1HA1S
	LataZBX9Eb13Q1Bch+MTaApV+EwY=
X-Gm-Gg: ASbGncvSKJFNFYvwjQOh2s1vp7WZ5HTDs1O3xQc4rem9QT68yaDOPn73lTVnxH0ujoA
	wpIxY+JAtKAxlUSk3qjqMKYxhhk13vznDj6hg77/bLWHokVAoRD7dziaNmjyym8vQSLA9NU2T9R
	5U9f/GuBxkbjtPQXT5IJa/Lw==
X-Google-Smtp-Source: AGHT+IFZNxc/KHoZDwFGFG6I1MTEwTJWg8WdgpWDyKSrkajFA9wV/Z9DP3VoJO9ODfnboEI+ZztudNXfilRisu5rbL8=
X-Received: by 2002:a05:6122:daa:b0:520:5400:ac0f with SMTP id
 71dfb90a1353d-527c35b6a41mr2823390e0c.3.1744638502640; Mon, 14 Apr 2025
 06:48:22 -0700 (PDT)
MIME-Version: 1.0
References: <20250414132729.679254-1-sashal@kernel.org> <20250414132729.679254-15-sashal@kernel.org>
In-Reply-To: <20250414132729.679254-15-sashal@kernel.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 14 Apr 2025 09:48:10 -0400
X-Gm-Features: ATxdqUGsIVkJwostdQs5byeooJDamJZ9S8mgOlW4xpayrB_LVHSmjP3XNtx4Yaw
Message-ID: <CADnq5_OyrpJL3fnbyiueyddkNZ2B-uRO9pyrRVqBTeY5AnepYw@mail.gmail.com>
To: Sasha Levin <sashal@kernel.org>
X-Rspamd-Queue-Id: 6B7A2454D5
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.174:from];
	DWL_DNSWL_BLOCKED(0.00)[gmail.com:dkim];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.221.174:from];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.221.174:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: IJJI45L6EUMMLWVHQU4GAOXZDF2XTXUF
X-Message-ID-Hash: IJJI45L6EUMMLWVHQU4GAOXZDF2XTXUF
X-MailFrom: alexdeucher@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, stable@vger.kernel.org, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Simona Vetter <simona.vetter@ffwll.ch>, Felix Kuehling <felix.kuehling@amd.com>, Pak Nin Lui <pak.lui@amd.com>, Alex Deucher <alexander.deucher@amd.com>, simona@ffwll.ch, sumit.semwal@linaro.org, Yunxiang.Li@amd.com, tvrtko.ursulin@igalia.com, matthew.auld@intel.com, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH AUTOSEL 6.13 15/34] drm/amdgpu: allow pinning DMA-bufs into VRAM if all importers can do P2P
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IJJI45L6EUMMLWVHQU4GAOXZDF2XTXUF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBBcHIgMTQsIDIwMjUgYXQgOToyOOKAr0FNIFNhc2hhIExldmluIDxzYXNoYWxAa2Vy
bmVsLm9yZz4gd3JvdGU6DQo+DQo+IEZyb206IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4NCj4NCj4gWyBVcHN0cmVhbSBjb21taXQgZjVlN2ZhYmQxZjVjNjViMmUw
NzdlZmNkYjExOGNmYTY3ZWFlNzMxMSBdDQo+DQo+IFRyeSBwaW5uaW5nIGludG8gVlJBTSB0byBh
bGxvdyBQMlAgd2l0aCBSRE1BIE5JQ3Mgd2l0aG91dCBPRFANCj4gc3VwcG9ydCBpZiBhbGwgYXR0
YWNobWVudHMgY2FuIGRvIFAyUC4gSWYgYW55IGF0dGFjaG1lbnQgY2FuJ3QgZG8NCj4gUDJQIGp1
c3QgcGluIGludG8gR1RUIGluc3RlYWQuDQo+DQo+IEFja2VkLWJ5OiBTaW1vbmEgVmV0dGVyIDxz
aW1vbmEudmV0dGVyQGZmd2xsLmNoPg0KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEZlbGl4IEt1ZWhs
aW5nIDxmZWxpeC5rdWVobGluZ0BhbWQuY29tPg0KPiBSZXZpZXdlZC1ieTogRmVsaXggS3VlaGxp
bmcgPGZlbGl4Lmt1ZWhsaW5nQGFtZC5jb20+DQo+IFRlc3RlZC1ieTogUGFrIE5pbiBMdWkgPHBh
ay5sdWlAYW1kLmNvbT4NCj4gQ2M6IFNpbW9uYSBWZXR0ZXIgPHNpbW9uYS52ZXR0ZXJAZmZ3bGwu
Y2g+DQo+IFNpZ25lZC1vZmYtYnk6IEFsZXggRGV1Y2hlciA8YWxleGFuZGVyLmRldWNoZXJAYW1k
LmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJuZWwub3JnPg0K
DQpUaGlzIHNob3VsZCBub3QgZ28gdG8gc3RhYmxlLiAgSXQgZGVwZW5kcyBvbiBkbWVtIGNncm91
cHMuDQoNCkFsZXgNCg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1k
Z3B1X2RtYV9idWYuYyB8IDI1ICsrKysrKysrKysrKysrKy0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDE4IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+DQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jIGIvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYw0KPiBpbmRleCA4ZTgxYTgzZDM3ZDg0Li44
MzM5MDE0M2MyZTlmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9h
bWRncHVfZG1hX2J1Zi5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV9kbWFfYnVmLmMNCj4gQEAgLTcyLDExICs3MiwyNSBAQCBzdGF0aWMgaW50IGFtZGdwdV9kbWFf
YnVmX2F0dGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLA0KPiAgICovDQo+ICBzdGF0aWMgaW50
IGFtZGdwdV9kbWFfYnVmX3BpbihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gpDQo+
ICB7DQo+IC0gICAgICAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmogPSBhdHRhY2gtPmRtYWJ1
Zi0+cHJpdjsNCj4gLSAgICAgICBzdHJ1Y3QgYW1kZ3B1X2JvICpibyA9IGdlbV90b19hbWRncHVf
Ym8ob2JqKTsNCj4gKyAgICAgICBzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmID0gYXR0YWNoLT5kbWFi
dWY7DQo+ICsgICAgICAgc3RydWN0IGFtZGdwdV9ibyAqYm8gPSBnZW1fdG9fYW1kZ3B1X2JvKGRt
YWJ1Zi0+cHJpdik7DQo+ICsgICAgICAgdTMyIGRvbWFpbnMgPSBiby0+cHJlZmVycmVkX2RvbWFp
bnM7DQo+DQo+IC0gICAgICAgLyogcGluIGJ1ZmZlciBpbnRvIEdUVCAqLw0KPiAtICAgICAgIHJl
dHVybiBhbWRncHVfYm9fcGluKGJvLCBBTURHUFVfR0VNX0RPTUFJTl9HVFQpOw0KPiArICAgICAg
IGRtYV9yZXN2X2Fzc2VydF9oZWxkKGRtYWJ1Zi0+cmVzdik7DQo+ICsNCj4gKyAgICAgICAvKg0K
PiArICAgICAgICAqIFRyeSBwaW5uaW5nIGludG8gVlJBTSB0byBhbGxvdyBQMlAgd2l0aCBSRE1B
IE5JQ3Mgd2l0aG91dCBPRFANCj4gKyAgICAgICAgKiBzdXBwb3J0IGlmIGFsbCBhdHRhY2htZW50
cyBjYW4gZG8gUDJQLiBJZiBhbnkgYXR0YWNobWVudCBjYW4ndCBkbw0KPiArICAgICAgICAqIFAy
UCBqdXN0IHBpbiBpbnRvIEdUVCBpbnN0ZWFkLg0KPiArICAgICAgICAqLw0KPiArICAgICAgIGxp
c3RfZm9yX2VhY2hfZW50cnkoYXR0YWNoLCAmZG1hYnVmLT5hdHRhY2htZW50cywgbm9kZSkNCj4g
KyAgICAgICAgICAgICAgIGlmICghYXR0YWNoLT5wZWVyMnBlZXIpDQo+ICsgICAgICAgICAgICAg
ICAgICAgICAgIGRvbWFpbnMgJj0gfkFNREdQVV9HRU1fRE9NQUlOX1ZSQU07DQo+ICsNCj4gKyAg
ICAgICBpZiAoZG9tYWlucyAmIEFNREdQVV9HRU1fRE9NQUlOX1ZSQU0pDQo+ICsgICAgICAgICAg
ICAgICBiby0+ZmxhZ3MgfD0gQU1ER1BVX0dFTV9DUkVBVEVfQ1BVX0FDQ0VTU19SRVFVSVJFRDsN
Cj4gKw0KPiArICAgICAgIHJldHVybiBhbWRncHVfYm9fcGluKGJvLCBkb21haW5zKTsNCj4gIH0N
Cj4NCj4gIC8qKg0KPiBAQCAtMTMxLDkgKzE0NSw2IEBAIHN0YXRpYyBzdHJ1Y3Qgc2dfdGFibGUg
KmFtZGdwdV9kbWFfYnVmX21hcChzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsDQo+
ICAgICAgICAgICAgICAgICByID0gdHRtX2JvX3ZhbGlkYXRlKCZiby0+dGJvLCAmYm8tPnBsYWNl
bWVudCwgJmN0eCk7DQo+ICAgICAgICAgICAgICAgICBpZiAocikNCj4gICAgICAgICAgICAgICAg
ICAgICAgICAgcmV0dXJuIEVSUl9QVFIocik7DQo+IC0NCj4gLSAgICAgICB9IGVsc2UgaWYgKGJv
LT50Ym8ucmVzb3VyY2UtPm1lbV90eXBlICE9IFRUTV9QTF9UVCkgew0KPiAtICAgICAgICAgICAg
ICAgcmV0dXJuIEVSUl9QVFIoLUVCVVNZKTsNCj4gICAgICAgICB9DQo+DQo+ICAgICAgICAgc3dp
dGNoIChiby0+dGJvLnJlc291cmNlLT5tZW1fdHlwZSkgew0KPiAtLQ0KPiAyLjM5LjUNCj4NCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQo+
IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
