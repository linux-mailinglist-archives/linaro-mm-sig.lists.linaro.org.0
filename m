Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0J2vMl0B4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:33:49 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A4E410E8B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:33:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7E6D244472
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:33:48 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	by lists.linaro.org (Postfix) with ESMTPS id 4DF7D3F76E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Nov 2025 16:53:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=B+pQ9PHY;
	spf=pass (lists.linaro.org: domain of urezki@gmail.com designates 209.85.167.53 as permitted sender) smtp.mailfrom=urezki@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-59431f57bf6so1169149e87.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Nov 2025 08:53:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764262396; x=1764867196; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=P4drWKEd4RAmd7MBRAIQVZy+ZqrpPhSLkolh9dDZECE=;
        b=B+pQ9PHYNCrK1BjBaiU2WAVggLJ1t0EJSO0tFNaDeuDnZAGkbQ/H7NSvutHsidvqT2
         neC8lmnf096acV+P8kOo0B1iJa2gJODUr/8qoxEuSsEYjpyRofwoFF+081FSmrdLiOhY
         ECrNIubMT0F0SPewzXN66+nRazEPhNiFxTEBBz8NPmgx9aTHqk31R9XxGZQCD0oiPurk
         yPqr05YGkpRURuFTrnt6AYJ/i1v2VhAeJtm7owWr9l5no+N1pzXP83XQyiaYAZNcxAOd
         Jw+aqQVKXJMcVVL1dY1c/VFTYQ5Z46jVW6hrZ+E6U62+4QZcKkTJjrfhnbXSElJNLF4V
         JORA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764262396; x=1764867196;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P4drWKEd4RAmd7MBRAIQVZy+ZqrpPhSLkolh9dDZECE=;
        b=PO+2xgIu6CdTw3LnukOFScLuYKke7i8A5eqnlhcOhGcqaZ0eFLSXXI96GIUEuq5deK
         gG3bOhzRp+mpUGImSQ9bn5Chzo+3DbKm9YYgPEGDHUkVE0GlQnh5uci56vO8eEn+s+j1
         9Khyi5Vj0D21Avijqx0xRrntejloZr0ILm+hEcBy0w1W9w+4qIzqyaWg+AbH95Np4gt5
         vxYFeSzHgoDjaozFnuDsgyS6ypz1dXXryxCvnKaY95GWYkH3SWpMeWxc6KYAVx4JkkCr
         o1W8fUwy4HAl27pLhZEpz9YX1J8qcuPFY80dZpxNPPfqSLLpaNVLA25jZNBadPyouD1H
         EzlA==
X-Forwarded-Encrypted: i=1; AJvYcCV78aq9kLM0JLWp/DDu7ppydTdJk/y6JpZNiGksGOhkVv+5E8EP16gHwD34HXU+siM1Y3cHiG4ImAQju071@lists.linaro.org
X-Gm-Message-State: AOJu0YxqaKXvPrRNUDcsTM4FZScsTy9zgfgX6AqCag3xbdN+0tja2ucb
	8KoDiVf9w4sRCIgYaHifKgo9GyMbYsAMLcWiYIIATzUn8d5ivWaMjpgg
X-Gm-Gg: ASbGncsMxy36PuU7tnShOAZKgAePm8TCIeDqH59M+BDwa3Cg7worZUcb6/4Rgv9X99U
	glZ5mWeVkRm95r4L0Z3vJp+xZk/A6e1jVwbODLK3rGBEadutJYs1RvqrFTsCi8JRmb35AT9T6Hn
	2Jg65fdMNMmt/FqrpnQa986Kygn6BIXn5lXJ5Wotq9pAXmiweBEBYndyRY1Gjzr/KBS8+q01NQU
	Q/IIqyWYGPWZu2bAiWIb1IvR0BiIR+P/IMwbaB8oFA5W24y4cNT0kigZhZVY9bE9iHCKV2bzkpp
	ku9EwfUdw12FqFZb0CuTBvocJfKa50NpRQB088LC+PHxRVg53dO99gdbGsr7U/rLrBhgCDOZz8T
	cFdiaAp2PWADC/2sSdflvrwpEj5tgXWXJaTtBGX30AHTgurejmMs1HQ==
X-Google-Smtp-Source: AGHT+IH8j638xjzoDHoozqoJ+ZLnXS1T0OqZepwP8h1W2O745wvjvCM314d3621pAOHVbu+pSPoujA==
X-Received: by 2002:a05:6512:6d1:b0:595:9d26:f551 with SMTP id 2adb3069b0e04-596b529c014mr4240034e87.48.1764262395589;
        Thu, 27 Nov 2025 08:53:15 -0800 (PST)
Received: from milan ([2001:9b1:d5a0:a500::24b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-596bfa44058sm530323e87.60.2025.11.27.08.53.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 08:53:14 -0800 (PST)
From: Uladzislau Rezki <urezki@gmail.com>
X-Google-Original-From: Uladzislau Rezki <urezki@milan>
Date: Thu, 27 Nov 2025 17:53:13 +0100
To: Barry Song <21cnbao@gmail.com>
Message-ID: <aSiB-UsunuE7u295@milan>
References: <20251122090343.81243-1-21cnbao@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251122090343.81243-1-21cnbao@gmail.com>
X-Spamd-Bar: ---
X-MailFrom: urezki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EL6YIYN3BFZP7AEYGOSKGAI73KJCYAFG
X-Message-ID-Hash: EL6YIYN3BFZP7AEYGOSKGAI73KJCYAFG
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:19 +0000
CC: akpm@linux-foundation.org, linux-mm@kvack.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Barry Song <v-songbaohua@oppo.com>, Uladzislau Rezki <urezki@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, John Stultz <jstultz@google.com>, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC] mm/vmap: map contiguous pages in batches whenever possible
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EL6YIYN3BFZP7AEYGOSKGAI73KJCYAFG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.19 / 15.00];
	DATE_IN_PAST(1.00)[3358];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NEQ_ENVFROM(0.00)[urezki@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linux-foundation.org,kvack.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,oppo.com,gmail.com,linaro.org,google.com,kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.257];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,oppo.com:email]
X-Rspamd-Queue-Id: 63A4E410E8B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gU2F0LCBOb3YgMjIsIDIwMjUgYXQgMDU6MDM6NDNQTSArMDgwMCwgQmFycnkgU29uZyB3cm90
ZToNCj4gRnJvbTogQmFycnkgU29uZyA8di1zb25nYmFvaHVhQG9wcG8uY29tPg0KPiANCj4gSW4g
bWFueSBjYXNlcywgdGhlIHBhZ2VzIHBhc3NlZCB0byB2bWFwKCkgbWF5IGluY2x1ZGUNCj4gaGln
aC1vcmRlciBwYWdlc+KAlGZvciBleGFtcGxlLCB0aGUgc3lzdGVtaGVhcCBvZnRlbiBhbGxvY2F0
ZXMNCj4gcGFnZXMgaW4gZGVzY2VuZGluZyBvcmRlcjogb3JkZXIgOCwgdGhlbiA0LCB0aGVuIDAu
IEN1cnJlbnRseSwNCj4gdm1hcCgpIGl0ZXJhdGVzIG92ZXIgZXZlcnkgcGFnZSBpbmRpdmlkdWFs
bHnigJRldmVuIHRoZSBwYWdlcw0KPiBpbnNpZGUgYSBoaWdoLW9yZGVyIGJsb2NrIGFyZSBoYW5k
bGVkIG9uZSBieSBvbmUuIFRoaXMgcGF0Y2gNCj4gZGV0ZWN0cyBoaWdoLW9yZGVyIHBhZ2VzIGFu
ZCBtYXBzIHRoZW0gYXMgYSBzaW5nbGUgY29udGlndW91cw0KPiBibG9jayB3aGVuZXZlciBwb3Nz
aWJsZS4NCj4gDQo+IEFub3RoZXIgcG9zc2liaWxpdHkgaXMgdG8gaW1wbGVtZW50IGEgbmV3IEFQ
SSwgdm1hcF9zZygpLg0KPiBIb3dldmVyLCB0aGF0IGNoYW5nZSBzZWVtcyB0byBiZSBxdWl0ZSBs
YXJnZSBpbiBzY29wZS4NCj4gDQo+IFdoZW4gdm1hcHBpbmcgYSAxMjhNQiBkbWEtYnVmIHVzaW5n
IHRoZSBzeXN0ZW1oZWFwLA0KPiB0aGlzIFJGQyBhcHBlYXJzIHRvIG1ha2Ugc3lzdGVtX2hlYXBf
ZG9fdm1hcCgpIDE2w5cgZmFzdGVyOg0KPiANCj4gVy8gcGF0Y2g6DQo+IFsgICA1MS4zNjM2ODJd
IHN5c3RlbV9oZWFwX2RvX3ZtYXAgdG9vayAyNDc0MDAwIG5zDQo+IFsgICA1My4zMDcwNDRdIHN5
c3RlbV9oZWFwX2RvX3ZtYXAgdG9vayAyNDY5MDA4IG5zDQo+IFsgICA1NS4wNjE5ODVdIHN5c3Rl
bV9oZWFwX2RvX3ZtYXAgdG9vayAyNTE5MDA4IG5zDQo+IFsgICA1Ni42NTM4MTBdIHN5c3RlbV9o
ZWFwX2RvX3ZtYXAgdG9vayAyNjc0MDAwIG5zDQo+IA0KPiBXL28gcGF0Y2g6DQo+IFsgICAgOC4y
NjA4ODBdIHN5c3RlbV9oZWFwX2RvX3ZtYXAgdG9vayAzOTQ5MDAwMCBucw0KPiBbICAgMzIuNTEz
MjkyXSBzeXN0ZW1faGVhcF9kb192bWFwIHRvb2sgMzg3ODQwMDAgbnMNCj4gWyAgIDgyLjY3MzM3
NF0gc3lzdGVtX2hlYXBfZG9fdm1hcCB0b29rIDQwNzExMDA4IG5zDQo+IFsgICA4NC41NzkwNjJd
IHN5c3RlbV9oZWFwX2RvX3ZtYXAgdG9vayA0MDIzNjAwMCBucw0KPiANCj4gQ2M6IFVsYWR6aXNs
YXUgUmV6a2kgPHVyZXpraUBnbWFpbC5jb20+DQo+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNl
bXdhbEBsaW5hcm8ub3JnPg0KPiBDYzogSm9obiBTdHVsdHogPGpzdHVsdHpAZ29vZ2xlLmNvbT4N
Cj4gQ2M6IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4NCj4gU2lnbmVkLW9mZi1i
eTogQmFycnkgU29uZyA8di1zb25nYmFvaHVhQG9wcG8uY29tPg0KPiAtLS0NCj4gIG1tL3ZtYWxs
b2MuYyB8IDQ5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0t
LS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA0MyBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0K
PiANCj4gZGlmZiAtLWdpdCBhL21tL3ZtYWxsb2MuYyBiL21tL3ZtYWxsb2MuYw0KPiBpbmRleCAw
ODMyZjk0NDU0NGMuLmFmMmUzZThjMDUyYSAxMDA2NDQNCj4gLS0tIGEvbW0vdm1hbGxvYy5jDQo+
ICsrKyBiL21tL3ZtYWxsb2MuYw0KPiBAQCAtNjQyLDYgKzY0MiwzNCBAQCBzdGF0aWMgaW50IHZt
YXBfc21hbGxfcGFnZXNfcmFuZ2Vfbm9mbHVzaCh1bnNpZ25lZCBsb25nIGFkZHIsIHVuc2lnbmVk
IGxvbmcgZW5kLA0KPiAgCXJldHVybiBlcnI7DQo+ICB9DQo+ICANCj4gK3N0YXRpYyBpbmxpbmUg
aW50IGdldF92bWFwX2JhdGNoX29yZGVyKHN0cnVjdCBwYWdlICoqcGFnZXMsDQo+ICsJCXVuc2ln
bmVkIGludCBzdHJpZGUsDQo+ICsJCWludCBtYXhfc3RlcHMsDQo+ICsJCXVuc2lnbmVkIGludCBp
ZHgpDQo+ICt7DQo+ICsJLyoNCj4gKwkgKiBDdXJyZW50bHksIGJhdGNoaW5nIGlzIG9ubHkgc3Vw
cG9ydGVkIGluIHZtYXBfcGFnZXNfcmFuZ2UNCj4gKwkgKiB3aGVuIHBhZ2Vfc2hpZnQgPT0gUEFH
RV9TSElGVC4NCj4gKwkgKi8NCj4gKwlpZiAoc3RyaWRlICE9IDEpDQo+ICsJCXJldHVybiAwOw0K
PiArDQo+ICsJc3RydWN0IHBhZ2UgKmJhc2UgPSBwYWdlc1tpZHhdOw0KPiArCWlmICghUGFnZUhl
YWQoYmFzZSkpDQo+ICsJCXJldHVybiAwOw0KPiArDQo+ICsJaW50IG9yZGVyID0gY29tcG91bmRf
b3JkZXIoYmFzZSk7DQo+ICsJaW50IG5yX3BhZ2VzID0gMSA8PCBvcmRlcjsNCj4gKw0KPiArCWlm
IChtYXhfc3RlcHMgPCBucl9wYWdlcykNCj4gKwkJcmV0dXJuIDA7DQo+ICsNCj4gKwlmb3IgKGlu
dCBpID0gMDsgaSA8IG5yX3BhZ2VzOyBpKyspDQo+ICsJCWlmIChwYWdlc1tpZHggKyBpXSAhPSBi
YXNlICsgaSkNCj4gKwkJCXJldHVybiAwOw0KPiArCXJldHVybiBvcmRlcjsNCj4gK30NCj4gKw0K
PiAgLyoNCj4gICAqIHZtYXBfcGFnZXNfcmFuZ2Vfbm9mbHVzaCBpcyBzaW1pbGFyIHRvIHZtYXBf
cGFnZXNfcmFuZ2UsIGJ1dCBkb2VzIG5vdA0KPiAgICogZmx1c2ggY2FjaGVzLg0KPiBAQCAtNjU1
LDIzICs2ODMsMzIgQEAgaW50IF9fdm1hcF9wYWdlc19yYW5nZV9ub2ZsdXNoKHVuc2lnbmVkIGxv
bmcgYWRkciwgdW5zaWduZWQgbG9uZyBlbmQsDQo+ICAJCXBncHJvdF90IHByb3QsIHN0cnVjdCBw
YWdlICoqcGFnZXMsIHVuc2lnbmVkIGludCBwYWdlX3NoaWZ0KQ0KPiAgew0KPiAgCXVuc2lnbmVk
IGludCBpLCBuciA9IChlbmQgLSBhZGRyKSA+PiBQQUdFX1NISUZUOw0KPiArCXVuc2lnbmVkIGlu
dCBzdHJpZGU7DQo+ICANCj4gIAlXQVJOX09OKHBhZ2Vfc2hpZnQgPCBQQUdFX1NISUZUKTsNCj4g
IA0KPiArCS8qDQo+ICsJICogU29tZSB1c2VycyBtYXkgYWxsb2NhdGUgcGFnZXMgZnJvbSBoaWdo
LW9yZGVyIGRvd24gdG8gb3JkZXIgMC4NCj4gKwkgKiBXZSByb3VnaGx5IGNoZWNrIGlmIHRoZSBm
aXJzdCBwYWdlIGlzIGEgY29tcG91bmQgcGFnZS4gSWYgc28sDQo+ICsJICogdGhlcmUgaXMgYSBj
aGFuY2UgdG8gYmF0Y2ggbXVsdGlwbGUgcGFnZXMgdG9nZXRoZXIuDQo+ICsJICovDQo+ICAJaWYg
KCFJU19FTkFCTEVEKENPTkZJR19IQVZFX0FSQ0hfSFVHRV9WTUFMTE9DKSB8fA0KPiAtCQkJcGFn
ZV9zaGlmdCA9PSBQQUdFX1NISUZUKQ0KPiArCQkJKHBhZ2Vfc2hpZnQgPT0gUEFHRV9TSElGVCAm
JiAhUGFnZUNvbXBvdW5kKHBhZ2VzWzBdKSkpDQo+DQpEbyB3ZSBzdXBwb3J0IF9fR0ZQX0NPTVAg
YXMgdm1hbGxvYy92bWFwIGZsYWc/IEFzIGkgc2VlIGZyb20gbGF0ZXN0Og0KDQovKg0KICogU2Vl
IF9fdm1hbGxvY19ub2RlX3JhbmdlKCkgZm9yIGEgY2xlYXIgbGlzdCBvZiBzdXBwb3J0ZWQgdm1h
bGxvYyBmbGFncy4NCiAqIFRoaXMgZ2ZwIGxpc3RzIGFsbCBmbGFncyBjdXJyZW50bHkgcGFzc2Vk
IHRocm91Z2ggdm1hbGxvYy4gQ3VycmVudGx5LA0KICogX19HRlBfWkVSTyBpcyB1c2VkIGJ5IEJQ
RiBhbmQgX19HRlBfTk9SRVRSWSBpcyB1c2VkIGJ5IHBlcmNwdS4gQm90aCBkcm0NCiAqIGFuZCBC
UEYgYWxzbyB1c2UgR0ZQX1VTRVIuIEFkZGl0aW9uYWxseSwgdmFyaW91cyB1c2VycyBwYXNzDQog
KiBHRlBfS0VSTkVMX0FDQ09VTlQuIFhmcyB1c2VzIF9fR0ZQX05PTE9DS0RFUC4NCiAqLw0KI2Rl
ZmluZSBHRlBfVk1BTExPQ19TVVBQT1JURUQgKEdGUF9LRVJORUwgfCBHRlBfQVRPTUlDIHwgR0ZQ
X05PV0FJVCB8XA0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF9fR0ZQX05PRkFJTCB8
ICBfX0dGUF9aRVJPIHwgX19HRlBfTk9SRVRSWSB8XA0KICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIEdGUF9OT0ZTIHwgR0ZQX05PSU8gfCBHRlBfS0VSTkVMX0FDQ09VTlQgfFwNCiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBHRlBfVVNFUiB8IF9fR0ZQX05PTE9DS0RFUCkNCg0K
Q291bGQgeW91IHBsZWFzZSBjbGFyaWZ5IHdoZW4gUGFnZUNvbXBvdW5kKHBhZ2VzWzBdKSByZXR1
cm5zIHRydWU/DQoNCj4gIAkJcmV0dXJuIHZtYXBfc21hbGxfcGFnZXNfcmFuZ2Vfbm9mbHVzaChh
ZGRyLCBlbmQsIHByb3QsIHBhZ2VzKTsNCj4gIA0KPiAtCWZvciAoaSA9IDA7IGkgPCBucjsgaSAr
PSAxVSA8PCAocGFnZV9zaGlmdCAtIFBBR0VfU0hJRlQpKSB7DQo+IC0JCWludCBlcnI7DQo+ICsJ
c3RyaWRlID0gMVUgPDwgKHBhZ2Vfc2hpZnQgLSBQQUdFX1NISUZUKTsNCj4gKwlmb3IgKGkgPSAw
OyBpIDwgbnI7ICkgew0KPiArCQlpbnQgZXJyLCBvcmRlcjsNCj4gIA0KPiAtCQllcnIgPSB2bWFw
X3JhbmdlX25vZmx1c2goYWRkciwgYWRkciArICgxVUwgPDwgcGFnZV9zaGlmdCksDQo+ICsJCW9y
ZGVyID0gZ2V0X3ZtYXBfYmF0Y2hfb3JkZXIocGFnZXMsIHN0cmlkZSwgbnIgLSBpLCBpKTsNCj4g
KwkJZXJyID0gdm1hcF9yYW5nZV9ub2ZsdXNoKGFkZHIsIGFkZHIgKyAoMVVMIDw8IChwYWdlX3No
aWZ0ICsgb3JkZXIpKSwNCj4gIAkJCQkJcGFnZV90b19waHlzKHBhZ2VzW2ldKSwgcHJvdCwNCj4g
LQkJCQkJcGFnZV9zaGlmdCk7DQo+ICsJCQkJCXBhZ2Vfc2hpZnQgKyBvcmRlcik7DQo+ICAJCWlm
IChlcnIpDQo+ICAJCQlyZXR1cm4gZXJyOw0KPiAgDQo+IC0JCWFkZHIgKz0gMVVMIDw8IHBhZ2Vf
c2hpZnQ7DQo+ICsJCWFkZHIgKz0gMVVMICA8PCAocGFnZV9zaGlmdCArIG9yZGVyKTsNCj4gKwkJ
aSArPSAxVSA8PCAob3JkZXIgKyBwYWdlX3NoaWZ0IC0gUEFHRV9TSElGVCk7DQo+ICAJfQ0KPiAg
DQo+ICAJcmV0dXJuIDA7DQo+IC0tIA0KPiAyLjM5LjMgKEFwcGxlIEdpdC0xNDYpDQo+IA0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==
