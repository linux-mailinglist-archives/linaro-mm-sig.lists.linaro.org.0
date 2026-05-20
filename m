Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iJJpJsZrDWrgxAUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 10:07:34 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 28FBF589662
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 10:07:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E3174405CA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 08:07:32 +0000 (UTC)
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	by lists.linaro.org (Postfix) with ESMTPS id AE6E83F77C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 08:07:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=ftSMCzSy;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of mikhail.v.gavrilov@gmail.com designates 209.85.210.48 as permitted sender) smtp.mailfrom=mikhail.v.gavrilov@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-7de7dc85b74so4511499a34.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 01:07:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779264441; cv=none;
        d=google.com; s=arc-20240605;
        b=Jkk6kzakMINq5+fdFWnniMts7IFgaltj2l4aKY+EoAIR0AB22tBwg3rBRNRg5RTZFQ
         Kjwv8NB9UdvCvICyYBBcbxE9LUtUOZl5Gd+lm84rUw4Fsf7KmhlERbFhxzPpG9/cUOOY
         cdQvR0r9GCKNhZi/l9SieRc25vNfSH/c55gKgo6tBZn7ZY7w7zXwF8wBXK5MgpH0thxN
         TOp8iil/P4yizRv8B2/xUpSi4umeQGeY7HIKMp1hD7zkk3TzPsos0HLuXNSNB+1qo/XR
         BJkZtlNiPf92OC3Prs3Vx0ywxq/LQKvfCw4sP32r2MqRUPQ5o5bHShmXz25CrG+59CIT
         tVww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Ytey4qORX2TbyVZpIBqgx3oRXsMx32wxQcpaf7l+9+M=;
        fh=NRi1gyQYsUGxkuBIbEMm1ytJDa+MNh/SZrGPf7dtN2E=;
        b=fdf2ffAgo4Hh4gClnhZpMLp5aDg3DxzrEVVMAMdFWek0UTNTzyu/sLSTpdLdi9rplD
         0ElezFW9zuIolBnnDprO/6mVwCR4QIBighddleL1NpzXuwRXOVKn5zd8pTsWGXAg8j7s
         ew+omphqm3fSd4GknBM69wScgdjCiX7gEGdrwDgigiEUSwLL/N902KOCusF/JEC1UXYi
         wxmJDLkS23QGhm0Chp8Bkj6aNQ0CAx8Vd3hDrT3ypbs/cfhgQKEkWNIqKwXZMpn58vHf
         7H3G1rrkzNm18VQgv14Ih2qLDI2Hhy47EP/bOBptOnkz8Aat3pKG8D5/6zWx/oQ0Y5Cf
         ARKQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779264441; x=1779869241; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ytey4qORX2TbyVZpIBqgx3oRXsMx32wxQcpaf7l+9+M=;
        b=ftSMCzSy0R+groBYUzqb3tcCXX78ym/d6kvFfTrKseHx7XO4nmQh9WsSmPeHL/gi41
         nYKpaFFbn+q/RGYst0QIMSohHOqjgdb2Kf4Sd66mJ11RXHPwkEcqb99kCpngtJ/tFHNr
         ywZIktia2+OBluSx3Woj0htA0K8Y9OWxUug0AGv2Hv1yk5hsAfej7gkw8cfDgoGSFgrL
         nFoO87QLBmz4QqxO7fAuwbvkJvJDa/RimatHq0PAEKu+dxVkwN3R6JjH1zIgCuOXgjrl
         Y1wk8GKKVgG9VSooVnhJwl6ZuNdDS4Y02+caMIRDn7QIH6m8LSwBRc6fJqCmq8wbEJ7D
         dhRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779264441; x=1779869241;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ytey4qORX2TbyVZpIBqgx3oRXsMx32wxQcpaf7l+9+M=;
        b=RYr5jiTEI+irSf5N850EPYBoi7ueE9t3NNZDxedk15yaoWJ/kZAbqznPE3pRHg5x+M
         ldSW/Z8GILzuVAfRF5CcZqwTFAKtXl9RG419CLijH+poR8kaghYEitIeOwMdNq+smPzy
         Zj8VAyNPkR1K0lTwL4P4oK2bAXMhlc6sGAfFB/YPgYEzObMNAru3nrx4mCaEhq7ppdXq
         lWtjidjvgLOzxjH6buVygisrwAi3ox7LjLRN3nNETfVnDa3+yDH5Ir/RwERZ40MIMbDe
         emzD98ChyssoqRr1N8qlwdvQe2x5GrFAiPwXoMdKva+0sbPjvghfRl07RoGro8D0HDVH
         h+rw==
X-Forwarded-Encrypted: i=1; AFNElJ/+OJj2no67T1Velig1nLMBS1+wuWw73ZMTDyoa3iZ9ILKlO0tjAmxKH1vaOPa6cWVZUi63xLfbPBshhYpd@lists.linaro.org
X-Gm-Message-State: AOJu0YzNwb+jGThC9FK4bB8OPXAbbVm8IQThdaaC/31yHmFGZvX0NR57
	SdatDii2w6dnTbG/OY+e1vf2LDFRue0HQ7kRNPK2t848wqpHSHftdp7ilJm1NezMGYDS9HFyvM4
	sEnc8E6lqad6zDlWXDJhsbQclpEFWJ4g=
X-Gm-Gg: Acq92OGxENxXir8QAIrKsYFdbwAsLg3y7QXvOXJEOHqHEP5fnUZhng4USLnzXELqJ0a
	rt5K4Mj+ZK30GAd554WECH48RyMQneZJqqhjFCzFza+AkhQjZ3Ol4UMf0XUSrgxd7uWlcDwWqfh
	iW0YSNBgVH8bfWN8QvAyGRioBEhAroodoXGSDytoZfzAeAxUn/spR1pjkvhnhVzaHjs6i2A3htV
	nEQXKHrBepZ3kMjeCgqKKki9UJ9C/pqEW4wksG7rh6bY+txYNHvHiufINtTe3EAzVhe7gcp69pI
	1dGzUIAQFA==
X-Received: by 2002:a05:6830:928:b0:7dc:e08d:d9ec with SMTP id
 46e09a7af769-7e4f2b24e30mr16828017a34.15.1779264440957; Wed, 20 May 2026
 01:07:20 -0700 (PDT)
MIME-Version: 1.0
References: <20260429143743.50743-1-mikhail.v.gavrilov@gmail.com>
 <20260519161541.19994-1-mikhail.v.gavrilov@gmail.com> <45bbcc75-f852-46c2-bcff-8cacb9413376@amd.com>
In-Reply-To: <45bbcc75-f852-46c2-bcff-8cacb9413376@amd.com>
From: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
Date: Wed, 20 May 2026 13:07:09 +0500
X-Gm-Features: AVHnY4LjCbKcTkLs9-x5er23_LG6HLKFdPJe4uy4QSmttSvQ2RTUpYxe2TP8aBU
Message-ID: <CABXGCsPRY+jk_ArYMOXqNTw31W95FBgNzqFq0_pvi3paYR=KDQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Spamd-Bar: -----
Message-ID-Hash: 3YH254T6SZRKAVACGIVFZ3O65GMLZ4YF
X-Message-ID-Hash: 3YH254T6SZRKAVACGIVFZ3O65GMLZ4YF
X-MailFrom: mikhail.v.gavrilov@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] drm/amdgpu: fix recursive ww_mutex acquire in amdgpu_devcoredump_format
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3YH254T6SZRKAVACGIVFZ3O65GMLZ4YF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.69 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	FREEMAIL_FROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[mikhailvgavrilov@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,amd.com,gmail.com,ffwll.ch,linaro.org,lists.linaro.org];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,mail.gmail.com:mid,linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: 28FBF589662
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCBNYXkgMjAsIDIwMjYgYXQgMTI6MDjigK9QTSBDaHJpc3RpYW4gS8O2bmlnDQo8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4gVGhhdCB3aG9sZSBpbmZyYXN0cnVj
dHVyZSBpcyBzdXBlcmZsb3VzLiBZb3UganVzdCBuZWVkIHRvIG1vZGlmeSBhbWRncHVfdm1fbG9j
a19ieV9wYXNpZCgpIHRvIHRha2UgYSBkcm1fZXhlYyBvYmplY3QgdG8gbG9jayB0aGUgcm9vdCBC
Ty4NCj4NCg0KQ2hyaXN0aWFuLCBtb2RpZnlpbmcgYW1kZ3B1X3ZtX2xvY2tfYnlfcGFzaWQoKSB0
byB0YWtlIGEgZHJtX2V4ZWMgdHVybnMNCm91dCB0byBhbHNvIHJlcXVpcmUgY29udmVydGluZyBp
dHMgb3RoZXIgY2FsbGVyLCBhbWRncHVfdm1faGFuZGxlX2ZhdWx0KCksDQp0byBkcm1fZXhlYyDi
gJQgbW9zdCBvZiB0aGUgZGlmZiBpcyB0aGF0IGNvbnZlcnNpb24sIG5vdCB0aGUgaGVscGVyIGl0
c2VsZi4NCg0KSSBjYW46DQogKGEpIGNvbnZlcnQgYm90aCBpbiBhIDItcGF0Y2ggc2VyaWVzICho
YW5kbGVfZmF1bHQgYmVjb21lcw0KICAgICBkcm1fZXhlY19pbml0ICsgZHJtX2V4ZWNfdW50aWxf
YWxsX2xvY2tlZCArIGRybV9leGVjX2ZpbmksIH4zMCBsaW5lcyksDQogICAgIG9yDQogKGIpIGtl
ZXAgdGhlIGxvb3AgaW5zaWRlIGFtZGdwdV92bV9sb2NrX2J5X3Bhc2lkKCkgc28gaGFuZGxlX2Zh
dWx0IHN0YXlzDQogICAgIGEgb25lLWxpbmVyIOKAlCBidXQgdGhlbiB0aGUgZGV2Y29yZWR1bXAg
Y2FsbGVyIGNhbid0IGFkZCB0aGUgSUIgQk9zDQogICAgIHRvIHRoZSBzYW1lIHRpY2tldCwgd2hp
Y2ggaXMgdGhlIHdob2xlIHBvaW50Lg0KDQooYSkgc2VlbXMgdW5hdm9pZGFibGUgaWYgd2Ugd2Fu
dCBvbmUgaGVscGVyLiBJcyB0aGF0IHdoYXQgeW91IGhhZCBpbiBtaW5kLA0Kb3IgZGlkIHlvdSBp
bnRlbmQgc29tZXRoaW5nIGxpZ2h0ZXIg4oCUIGUuZy4gYSBzZXBhcmF0ZQ0KYW1kZ3B1X3ZtX2xv
Y2tfYnlfcGFzaWRfZXhlYygpIGxlYXZpbmcgaGFuZGxlX2ZhdWx0IHVudG91Y2hlZD8NCg0KLS0g
DQpCZXN0IFJlZ2FyZHMsDQpNaWtlIEdhdnJpbG92Lg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
