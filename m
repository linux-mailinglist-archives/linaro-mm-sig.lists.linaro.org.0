Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0F3B2FC0B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Aug 2025 16:13:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 12B1345D4E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Aug 2025 14:13:29 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	by lists.linaro.org (Postfix) with ESMTPS id 813DE4435F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Aug 2025 14:13:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="YYNs42F/";
	spf=pass (lists.linaro.org: domain of alexdeucher@gmail.com designates 209.85.214.175 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2447d607b70so1541045ad.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Aug 2025 07:13:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755785601; x=1756390401; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ewQnvlqhN4ny32MfAw6z/qV7rnt0Pvo8EUPrCTIPPWU=;
        b=YYNs42F/Yel5zqdc7Wd0iMo2GVCoGKVdyaBjDxrIXfqHgsljvBPTSE/Psttk9UL0JM
         j8v+x7TVUrgRD0h3DwPIODO9PYVylnsrDJkZxTtSvXju2sVeA+CzISoo0tmhDGoBZii6
         HXT7k5l2eEwdmzRVoJcQgS7ATqRDHt6D0mggWagbSyNllPHaXcNR5eFjTky9V/vnYbOP
         81IfgKQ78IC2Gy9m1oMSm4szvtIYA2jpnw44EYRuzRqVXfwzFzxoSz7JwTRDdj1/GgFj
         hEEiKxUXthvm3NrMl+p744SJIQjyCicP7vDw9TSb1KJ66chfXbeljlCWE/jdgc9JpZ3y
         lv2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755785601; x=1756390401;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ewQnvlqhN4ny32MfAw6z/qV7rnt0Pvo8EUPrCTIPPWU=;
        b=mivlphbkI42yGg2IPMidMgL3QgQynns6tXPffP10P+C4OZLOlAsq5mWCseLHNd/mib
         n3qpcWAFZjUfiTVePTZ7Bbwv2VWUg+YhgWQLdzWBsQivZVYN+CtWTO7Esi7x+stHJbSi
         Omuw+OF4moCaOYJtIH5TZnGzl3wRMlFaA2ntR/L18P2qQMW1GBWOsoyp4ylcJKOJTpLu
         IYCwcjUr68dUpBX7zZZ7BTJStVrZtg06Oedqxb5BIbyEIEIbNbCuAl5LtCyh8iXlXrhi
         p/jQPWPcHexLfMnP3+LTTqrcm2HCOnnrjbgqjA14GVLs9knp9W7PN10Lq9eSkP18jw7Y
         rODg==
X-Forwarded-Encrypted: i=1; AJvYcCWx8An2baSOhXvURhXimrP5osV+k4HrZ5hTzwwPfO87FGixP3tEjiDMW+mY7+wb3dJ/WJsoyrAhao4u4qLz@lists.linaro.org
X-Gm-Message-State: AOJu0YzcS0bojKxP0WBwnpz8tsi6wFf2pdFCNku52rv3n23OM0JkZJQE
	+K1xQBHJct38xt7YGXlx8gV34Q0lRQus0zxu+cVXOlCryms68/pB/WKXbg+cCN6qrruZwMsy+cu
	sqfSVEZC+QyJBqZP+3K3NLyeAuULxsow=
X-Gm-Gg: ASbGncvtgcgv1UURwMvi3mH8liu0wt7ET1JDF3IO7W5LHKEy1VsoCWBTlGxMR9jHjt4
	VMrDKjxw0xT0GEMVFcXleBNFWcfhaXWD58m8g42V/TQShPH8U/y2KqBT9XQt5IJEtsJY3IudA04
	/jEwZTiPfB/O7kceobx+bCRW1ds4fjQKjZ8eSGVIf6FyYu0L9nXc/+YNneX3WyZeSZZHIe/W8U6
	DD/auY=
X-Google-Smtp-Source: AGHT+IHRc2aUrbiGENoV07AwMCzaGJhLBFchXgZtLS6TVE0HemOCZi8CwvOia3zy48LcLGITV96Y1WlMOkrR+BKq3g4=
X-Received: by 2002:a17:902:f542:b0:240:4d65:508f with SMTP id
 d9443c01a7336-245fed79629mr24717095ad.6.1755785601462; Thu, 21 Aug 2025
 07:13:21 -0700 (PDT)
MIME-Version: 1.0
References: <20250821064031.39090-1-tzimmermann@suse.de> <b92c072b-a302-47c8-b2c2-f4b2e3954165@amd.com>
 <CADnq5_PxpsXkzzpa8KJoZL-pBaM2ViVBOaXuYkYyd_xHBNLt9A@mail.gmail.com> <37cacb29-e382-400c-b4fb-bed733ce480b@suse.de>
In-Reply-To: <37cacb29-e382-400c-b4fb-bed733ce480b@suse.de>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Thu, 21 Aug 2025 10:13:09 -0400
X-Gm-Features: Ac12FXxO3lpLz4bRGPBuj6tXGU7_OsrxRgedUV-m31__xMMSMjZ2TdDfFe7M8D8
Message-ID: <CADnq5_PEXW9J=yVaXEA0VoKPZW48SQj7inLM=wq-nQX+xLP_og@mail.gmail.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 813DE4435F
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:email,kylinos.cn:email];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	FREEMAIL_CC(0.00)[amd.com,linaro.org,kylinos.cn,linux.intel.com,kernel.org,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.214.175:from];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_FROM(0.00)[gmail.com]
Message-ID-Hash: LVKWCRZL7OMRIDB3EDGDBDJ7VKV62IGJ
X-Message-ID-Hash: LVKWCRZL7OMRIDB3EDGDBDJ7VKV62IGJ
X-MailFrom: alexdeucher@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, sumit.semwal@linaro.org, oushixiong@kylinos.cn, alexander.deucher@amd.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, simona@ffwll.ch, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] drm/amdgpu: Pin buffers while vmap'ing exported dma-buf objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LVKWCRZL7OMRIDB3EDGDBDJ7VKV62IGJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBBdWcgMjEsIDIwMjUgYXQgMTA6MTDigK9BTSBUaG9tYXMgWmltbWVybWFubiA8dHpp
bW1lcm1hbm5Ac3VzZS5kZT4gd3JvdGU6DQo+DQo+IEhpDQo+DQo+IEFtIDIxLjA4LjI1IHVtIDE1
OjEzIHNjaHJpZWIgQWxleCBEZXVjaGVyOg0KPiA+IE9uIFRodSwgQXVnIDIxLCAyMDI1IGF0IDQ6
NTLigK9BTSBDaHJpc3RpYW4gS8O2bmlnDQo+ID4gPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4g
d3JvdGU6DQo+ID4+DQo+ID4+DQo+ID4+IE9uIDIxLjA4LjI1IDA4OjQwLCBUaG9tYXMgWmltbWVy
bWFubiB3cm90ZToNCj4gPj4+IEN1cnJlbnQgZG1hLWJ1ZiB2bWFwIHNlbWFudGljcyByZXF1aXJl
IHRoYXQgdGhlIG1hcHBlZCBidWZmZXIgcmVtYWlucw0KPiA+Pj4gaW4gcGxhY2UgdW50aWwgdGhl
IGNvcnJlc3BvbmRpbmcgdnVubWFwIGhhcyBjb21wbGV0ZWQuDQo+ID4+Pg0KPiA+Pj4gRm9yIEdF
TS1TSE1FTSwgdGhpcyB1c2VkIHRvIGJlIGd1YXJhbnRlZWQgYnkgYSBwaW4gb3BlcmF0aW9uIHdo
aWxlIGNyZWF0aW5nDQo+ID4+PiBhbiBTL0cgdGFibGUgaW4gaW1wb3J0LiBHRU0tU0hNRU4gY2Fu
IG5vdyBpbXBvcnQgZG1hLWJ1ZiBvYmplY3RzIHdpdGhvdXQNCj4gPj4+IGNyZWF0aW5nIHRoZSBT
L0cgdGFibGUsIHNvIHRoZSBwaW4gaXMgbWlzc2luZy4gTGVhZHMgdG8gcGFnZS1mYXVsdCBlcnJv
cnMsDQo+ID4+PiBzdWNoIGFzIHRoZSBvbmUgc2hvd24gYmVsb3cuDQo+ID4+Pg0KPiA+Pj4gWyAg
MTAyLjEwMTcyNl0gQlVHOiB1bmFibGUgdG8gaGFuZGxlIHBhZ2UgZmF1bHQgZm9yIGFkZHJlc3M6
IGZmZmZjOTAxMjcwMDAwMDANCj4gPj4+IFsuLi5dDQo+ID4+PiBbICAxMDIuMTU3MTAyXSBSSVA6
IDAwMTA6dWRsX2NvbXByZXNzX2hsaW5lMTYrMHgyMTkvMHg5NDAgW3VkbF0NCj4gPj4+IFsuLi5d
DQo+ID4+PiBbICAxMDIuMjQzMjUwXSBDYWxsIFRyYWNlOg0KPiA+Pj4gWyAgMTAyLjI0NTY5NV0g
IDxUQVNLPg0KPiA+Pj4gWyAgMTAyLjI0NzdWOTVdICA/IHZhbGlkYXRlX2NoYWluKzB4MjRlLzB4
NWUwDQo+ID4+PiBbICAxMDIuMjUxODA1XSAgPyBfX2xvY2tfYWNxdWlyZSsweDU2OC8weGFlMA0K
PiA+Pj4gWyAgMTAyLjI1NTgwN10gIHVkbF9yZW5kZXJfaGxpbmUrMHgxNjUvMHgzNDEgW3VkbF0N
Cj4gPj4+IFsgIDEwMi4yNjAzMzhdICA/IF9fcGZ4X3VkbF9yZW5kZXJfaGxpbmUrMHgxMC8weDEw
IFt1ZGxdDQo+ID4+PiBbICAxMDIuMjY1Mzc5XSAgPyBsb2NhbF9jbG9ja19ub2luc3RyKzB4Yi8w
eDEwMA0KPiA+Pj4gWyAgMTAyLjI2OTY0Ml0gID8gX19sb2NrX3JlbGVhc2UuaXNyYS4wKzB4MTZj
LzB4MmUwDQo+ID4+PiBbICAxMDIuMjc0MjQ2XSAgPyBtYXJrX2hlbGRfbG9ja3MrMHg0MC8weDcw
DQo+ID4+PiBbICAxMDIuMjc4MTc3XSAgdWRsX3ByaW1hcnlfcGxhbmVfaGVscGVyX2F0b21pY191
cGRhdGUrMHg0M2UvMHg2ODAgW3VkbF0NCj4gPj4+IFsgIDEwMi4yODQ2MDZdICA/IF9fcGZ4X3Vk
bF9wcmltYXJ5X3BsYW5lX2hlbHBlcl9hdG9taWNfdXBkYXRlKzB4MTAvMHgxMCBbdWRsXQ0KPiA+
Pj4gWyAgMTAyLjI5MTU1MV0gID8gbG9ja2RlcF9oYXJkaXJxc19vbl9wcmVwYXJlLnBhcnQuMCsw
eDkyLzB4MTcwDQo+ID4+PiBbICAxMDIuMjk3MjA4XSAgPyBsb2NrZGVwX2hhcmRpcnFzX29uKzB4
ODgvMHgxMzANCj4gPj4+IFsgIDEwMi4zMDE1NTRdICA/IF9yYXdfc3Bpbl91bmxvY2tfaXJxKzB4
MjQvMHg1MA0KPiA+Pj4gWyAgMTAyLjMwNTkwMV0gID8gd2FpdF9mb3JfY29tcGxldGlvbl90aW1l
b3V0KzB4MmJiLzB4M2EwDQo+ID4+PiBbICAxMDIuMzExMDI4XSAgPyBkcm1fYXRvbWljX2hlbHBl
cl9jYWxjX3RpbWVzdGFtcGluZ19jb25zdGFudHMrMHgxNDEvMHgyMDANCj4gPj4+IFsgIDEwMi4z
MTc3MTRdICA/IGRybV9hdG9taWNfaGVscGVyX2NvbW1pdF9wbGFuZXMrMHgzYjYvMHgxMDMwDQo+
ID4+PiBbICAxMDIuMzIzMjc5XSAgZHJtX2F0b21pY19oZWxwZXJfY29tbWl0X3BsYW5lcysweDNi
Ni8weDEwMzANCj4gPj4+IFsgIDEwMi4zMjg2NjRdICBkcm1fYXRvbWljX2hlbHBlcl9jb21taXRf
dGFpbCsweDQxLzB4YjANCj4gPj4+IFsgIDEwMi4zMzM2MjJdICBjb21taXRfdGFpbCsweDIwNC8w
eDMzMA0KPiA+Pj4gWy4uLl0NCj4gPj4+IFsgIDEwMi41Mjk5NDZdIC0tLVsgZW5kIHRyYWNlIDAw
MDAwMDAwMDAwMDAwMDAgXS0tLQ0KPiA+Pj4gWyAgMTAyLjY1MTk4MF0gUklQOiAwMDEwOnVkbF9j
b21wcmVzc19obGluZTE2KzB4MjE5LzB4OTQwIFt1ZGxdDQo+ID4+Pg0KPiA+Pj4gSW4gdGhpcyBz
dGFjayBzdHJhY2UsIHVkbCAoYmFzZWQgb24gR0VNLVNITUVNKSBpbXBvcnRlZCBhbmQgdm1hcCdl
ZCBhDQo+ID4+PiBkbWEtYnVmIGZyb20gYW1kZ3B1LiBBbWRncHUgcmVsb2NhdGVkIHRoZSBidWZm
ZXIsIHRoZXJlYnkgaW52YWxpZGF0aW5nIHRoZQ0KPiA+Pj4gbWFwcGluZy4NCj4gPj4+DQo+ID4+
PiBQcm92aWRlIGEgY3VzdG9tIGRtYS1idWYgdm1hcCBtZXRob2QgaW4gYW1kZ3B1IHRoYXQgcGlu
cyB0aGUgb2JqZWN0IGJlZm9yZQ0KPiA+Pj4gbWFwcGluZyBpdCdzIGJ1ZmZlcidzIHBhZ2VzIGlu
dG8ga2VybmVsIGFkZHJlc3Mgc3BhY2UuIERvIHRoZSBvcHBvc2l0ZSBpbg0KPiA+Pj4gdnVubWFw
Lg0KPiA+Pj4NCj4gPj4+IE5vdGUgdGhhdCBkbWEtYnVmIHZtYXAgZGlmZmVycyBmcm9tIEdFTSB2
bWFwIGluIGhvdyBpdCBoYW5kbGVzIHJlbG9jYXRpb24uDQo+ID4+PiBXaGlsZSBkbWEtYnVmIHZt
YXAga2VlcHMgdGhlIGJ1ZmZlciBpbiBwbGFjZSwgR0VNIHZtYXAgcmVxdWlyZXMgdGhlIGNhbGxl
cg0KPiA+Pj4gdG8ga2VlcCB0aGUgYnVmZmVyIGluIHBsYWNlLiBIZW5jZSwgdGhpcyBmaXggaXMg
aW4gYW1kZ3B1J3MgZG1hLWJ1ZiBjb2RlDQo+ID4+PiBpbnN0ZWFkIG9mIGl0cyBHRU0gY29kZS4N
Cj4gPj4+DQo+ID4+PiBBIGRpc2N1c3Npb24gb2YgdmFyaW91cyBhcHByb2FjaGVzIHRvIHNvbHZp
bmcgdGhlIHByb2JsZW0gaXMgYXZhaWxhYmxlDQo+ID4+PiBhdCBbMV0uDQo+ID4+Pg0KPiA+Pj4g
djM6DQo+ID4+PiAtIHRyeSAoR1RUIHwgVlJBTSk7IGRyb3AgQ1BVIGRvbWFpbiAoQ2hyaXN0aWFu
KQ0KPiA+Pj4gdjI6DQo+ID4+PiAtIG9ubHkgdXNlIG1hcGFibGUgZG9tYWlucyAoQ2hyaXN0aWFu
KQ0KPiA+Pj4gLSB0cnkgcGlubmluZyB0byBkb21haW5zIGluIHByZWZlcnJlZCBvcmRlcg0KPiA+
Pj4NCj4gPj4+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBz
dXNlLmRlPg0KPiA+Pj4gRml4ZXM6IDY2MGNkNDQ2NTlhMCAoImRybS9zaG1lbS1oZWxwZXI6IElt
cG9ydCBkbWFidWYgd2l0aG91dCBtYXBwaW5nIGl0cyBzZ190YWJsZSIpDQo+ID4+PiBSZXBvcnRl
ZC1ieTogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+DQo+ID4+PiBDbG9z
ZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC9iYTFiZGZiOC1kYmY3LTQzNzIt
YmRjYi1kZjdlMDUxMWM3MDJAc3VzZS5kZS8NCj4gPj4+IENjOiBTaGl4aW9uZyBPdSA8b3VzaGl4
aW9uZ0BreWxpbm9zLmNuPg0KPiA+Pj4gQ2M6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFu
bkBzdXNlLmRlPg0KPiA+Pj4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3Jz
dEBsaW51eC5pbnRlbC5jb20+DQo+ID4+PiBDYzogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJu
ZWwub3JnPg0KPiA+Pj4gQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBnbWFpbC5jb20+DQo+ID4+
PiBDYzogU2ltb25hIFZldHRlciA8c2ltb25hQGZmd2xsLmNoPg0KPiA+Pj4gQ2M6IFN1bWl0IFNl
bXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+DQo+ID4+PiBDYzogIkNocmlzdGlhbiBLw7Zu
aWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+ID4+PiBDYzogZHJpLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZw0KPiA+Pj4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZw0K
PiA+Pj4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZw0KPiA+Pj4gTGluazogaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzk3OTJjNmMzLWEyYjgtNGIyYi1iNWJhLWZi
YTE5YjE1M2UyMUBzdXNlLmRlLyAjIFsxXQ0KPiA+PiBSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiA+IFRob21hcyBkaWQgeW91IHdhbnQg
dG8gdGFrZSB0aGlzIHRocm91Z2ggZHJtLW1pc2Mgb3IgZG8geW91IHdhbnQgbWUgdG8NCj4gPiBw
aWNrIHRoaXMgdXA/DQo+DQo+IElmIHlvdSBoYXZlbid0IHNlbmQgb3V0IHRoaXMgd2VlaydzIGZp
eGVzIGZvciBhbWRncHUsIHlvdSdyZSB3ZWxjb21lIHRvDQo+IHBpY2sgaXQgdXAuIE90aGVyd2lz
ZSBJIGNhbiBtZXJnZSBpdCB2aWEgZHJtLW1pc2MtZml4ZXMgbmV4dCB3ZWVrLg0KDQpQbGVhc2Ug
Z28gYWhlYWQuICBJJ3ZlIGFscmVhZHkgc2VudCBvdXQgbXkgLWZpeGVzIFBSIHRoaXMgd2Vlay4N
Cg0KQWxleA0KDQo+DQo+IEJlc3QgcmVnYXJkcw0KPiBUaG9tYXMNCj4NCj4gPg0KPiA+IFRoYW5r
cywNCj4gPg0KPiA+IEFsZXgNCj4gPg0KPiA+Pj4gLS0tDQo+ID4+PiAgIGRyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMgfCAzNCArKysrKysrKysrKysrKysrKysrLS0N
Cj4gPj4+ICAgMSBmaWxlIGNoYW5nZWQsIDMyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
DQo+ID4+Pg0KPiA+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV9kbWFfYnVmLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1
Zi5jDQo+ID4+PiBpbmRleCA1NzQzZWJiMmYxYjcuLmNlMjdjYjViYjA1ZSAxMDA2NDQNCj4gPj4+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMNCj4gPj4+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMNCj4gPj4+
IEBAIC0yODUsNiArMjg1LDM2IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X2RtYV9idWZfYmVnaW5fY3B1
X2FjY2VzcyhzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1ZiwNCj4gPj4+ICAgICAgICByZXR1cm4gcmV0
Ow0KPiA+Pj4gICB9DQo+ID4+Pg0KPiA+Pj4gK3N0YXRpYyBpbnQgYW1kZ3B1X2RtYV9idWZfdm1h
cChzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1Ziwgc3RydWN0IGlvc3lzX21hcCAqbWFwKQ0KPiA+Pj4g
K3sNCj4gPj4+ICsgICAgIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqID0gZG1hX2J1Zi0+cHJp
djsNCj4gPj4+ICsgICAgIHN0cnVjdCBhbWRncHVfYm8gKmJvID0gZ2VtX3RvX2FtZGdwdV9ibyhv
YmopOw0KPiA+Pj4gKyAgICAgaW50IHJldDsNCj4gPj4+ICsNCj4gPj4+ICsgICAgIC8qDQo+ID4+
PiArICAgICAgKiBQaW4gdG8ga2VlcCBidWZmZXIgaW4gcGxhY2Ugd2hpbGUgaXQncyB2bWFwJ2Vk
LiBUaGUgYWN0dWFsDQo+ID4+PiArICAgICAgKiBkb21haW4gaXMgbm90IHRoYXQgaW1wb3J0YW50
IGFzIGxvbmcgYXMgaXQncyBtYXBhYmxlLiBVc2luZw0KPiA+Pj4gKyAgICAgICogR1RUIGFuZCBW
UkFNIHNob3VsZCBiZSBjb21wYXRpYmxlIHdpdGggbW9zdCB1c2UgY2FzZXMuDQo+ID4+PiArICAg
ICAgKi8NCj4gPj4+ICsgICAgIHJldCA9IGFtZGdwdV9ib19waW4oYm8sIEFNREdQVV9HRU1fRE9N
QUlOX0dUVCB8IEFNREdQVV9HRU1fRE9NQUlOX1ZSQU0pOw0KPiA+Pj4gKyAgICAgaWYgKHJldCkN
Cj4gPj4+ICsgICAgICAgICAgICAgcmV0dXJuIHJldDsNCj4gPj4+ICsgICAgIHJldCA9IGRybV9n
ZW1fZG1hYnVmX3ZtYXAoZG1hX2J1ZiwgbWFwKTsNCj4gPj4+ICsgICAgIGlmIChyZXQpDQo+ID4+
PiArICAgICAgICAgICAgIGFtZGdwdV9ib191bnBpbihibyk7DQo+ID4+PiArDQo+ID4+PiArICAg
ICByZXR1cm4gcmV0Ow0KPiA+Pj4gK30NCj4gPj4+ICsNCj4gPj4+ICtzdGF0aWMgdm9pZCBhbWRn
cHVfZG1hX2J1Zl92dW5tYXAoc3RydWN0IGRtYV9idWYgKmRtYV9idWYsIHN0cnVjdCBpb3N5c19t
YXAgKm1hcCkNCj4gPj4+ICt7DQo+ID4+PiArICAgICBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9i
aiA9IGRtYV9idWYtPnByaXY7DQo+ID4+PiArICAgICBzdHJ1Y3QgYW1kZ3B1X2JvICpibyA9IGdl
bV90b19hbWRncHVfYm8ob2JqKTsNCj4gPj4+ICsNCj4gPj4+ICsgICAgIGRybV9nZW1fZG1hYnVm
X3Z1bm1hcChkbWFfYnVmLCBtYXApOw0KPiA+Pj4gKyAgICAgYW1kZ3B1X2JvX3VucGluKGJvKTsN
Cj4gPj4+ICt9DQo+ID4+PiArDQo+ID4+PiAgIGNvbnN0IHN0cnVjdCBkbWFfYnVmX29wcyBhbWRn
cHVfZG1hYnVmX29wcyA9IHsNCj4gPj4+ICAgICAgICAuYXR0YWNoID0gYW1kZ3B1X2RtYV9idWZf
YXR0YWNoLA0KPiA+Pj4gICAgICAgIC5waW4gPSBhbWRncHVfZG1hX2J1Zl9waW4sDQo+ID4+PiBA
QCAtMjk0LDggKzMyNCw4IEBAIGNvbnN0IHN0cnVjdCBkbWFfYnVmX29wcyBhbWRncHVfZG1hYnVm
X29wcyA9IHsNCj4gPj4+ICAgICAgICAucmVsZWFzZSA9IGRybV9nZW1fZG1hYnVmX3JlbGVhc2Us
DQo+ID4+PiAgICAgICAgLmJlZ2luX2NwdV9hY2Nlc3MgPSBhbWRncHVfZG1hX2J1Zl9iZWdpbl9j
cHVfYWNjZXNzLA0KPiA+Pj4gICAgICAgIC5tbWFwID0gZHJtX2dlbV9kbWFidWZfbW1hcCwNCj4g
Pj4+IC0gICAgIC52bWFwID0gZHJtX2dlbV9kbWFidWZfdm1hcCwNCj4gPj4+IC0gICAgIC52dW5t
YXAgPSBkcm1fZ2VtX2RtYWJ1Zl92dW5tYXAsDQo+ID4+PiArICAgICAudm1hcCA9IGFtZGdwdV9k
bWFfYnVmX3ZtYXAsDQo+ID4+PiArICAgICAudnVubWFwID0gYW1kZ3B1X2RtYV9idWZfdnVubWFw
LA0KPiA+Pj4gICB9Ow0KPiA+Pj4NCj4gPj4+ICAgLyoqDQo+ID4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+ID4+IExpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZw0KPiA+PiBUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zw0KPg0KPiAtLQ0KPiAtLQ0KPiBUaG9tYXMgWmltbWVybWFubg0KPiBHcmFwaGljcyBEcml2ZXIg
RGV2ZWxvcGVyDQo+IFNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSA0KPiBGcmFu
a2Vuc3RyYXNzZSAxNDYsIDkwNDYxIE51ZXJuYmVyZywgR2VybWFueQ0KPiBHRjogSXZvIFRvdGV2
LCBBbmRyZXcgTXllcnMsIEFuZHJldyBNY0RvbmFsZCwgQm91ZGllbiBNb2VybWFuDQo+IEhSQiAz
NjgwOSAoQUcgTnVlcm5iZXJnKQ0KPg0KPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
