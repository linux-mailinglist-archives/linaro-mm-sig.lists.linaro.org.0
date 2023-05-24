Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C8F70F45F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 12:40:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 839E84145C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 10:40:05 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by lists.linaro.org (Postfix) with ESMTPS id CC1BC3E81F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 May 2023 10:40:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=Rz6wHr67;
	spf=pass (lists.linaro.org: domain of sumit.semwal@linaro.org designates 209.85.208.45 as permitted sender) smtp.mailfrom=sumit.semwal@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-510d1972d5aso1569698a12.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 24 May 2023 03:40:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684924800; x=1687516800;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=38iJHpKlIiWZbh1WDjxxGN+0tLET1s1ACGv1lr82oHc=;
        b=Rz6wHr67S1cULfAOj1lT79Lh3G+fcFkDyCZnpmiyp0QRutIFDCh87U8llVuL6KrsIP
         5+FrH0DrH8tWcSoiJ01musD/yKnK5UpEbk8NIm3A+pa75pB8XItq+/TpZaZwAj/CL0LR
         vi2PJd5KJimgYUEpDO68Z+07waFH4+YjdadJBhE8JoxBEFhoVSLVK12/wIF0UIGmoKcy
         afrnF7oI3RjLtZcmAsom2yxImNuJT4vQBz4i2wl8gJnMIThZO2bEXxMSIN424Irr/ucg
         5uFIix90Da3cwxizk+RCqUMtlzAlSgEvdm+CGWI5XB4Cp3bnBBg1Nr7xrw1Mk71/TD9J
         eaKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684924800; x=1687516800;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=38iJHpKlIiWZbh1WDjxxGN+0tLET1s1ACGv1lr82oHc=;
        b=FoWaTWX1CZ8jiLwVNXYR5cywN0eoqtdKICxFAYQwzeIlEWKwwkqpiWG1/pBKHj09aS
         DqNzD49zeGuiKiQXQ5NRVyM6aAMkPys/CC4b5hzzxzPt3N5PhmdI9QAueUuiCFDkGLkH
         zF6ools+aribHFAYAOhg09kEveE5bcgqpHGUWYTy7skhM72LD3qLDLwzgeNkVr+Y8G5s
         UV7NqqANe9Qna9NVZbWwuvq0T4iAi7aYmv1kbrLAT2mfl41vytnP8mQZJaKKwqRwFYgo
         xFpAV9d/XR5FLe3o5gVSCvino3zdoHvv8UAptWkvjtvQlQa9OMpCWXIlH690vh997YwH
         vSow==
X-Gm-Message-State: AC+VfDx9robSayRS/+lA+uAW3HLhl5ocnoSjBRzK3j01SOX7kBgd8aZN
	UTkVI1Iyo/1YdawErW0VAzY0/OqHjKIaWc4PzNEC8XSS
X-Google-Smtp-Source: ACHHUZ5KEgHn+BODCBjPTJdXE32cq+ah2nLHIvhhJs/3W9A/frhnK+0OzySN5R8OvNNpBRTK6iEwFez2N6pDL6jV+Zo=
X-Received: by 2002:aa7:c6c6:0:b0:50b:cd19:7545 with SMTP id
 b6-20020aa7c6c6000000b0050bcd197545mr1445519eds.33.1684924799684; Wed, 24 May
 2023 03:39:59 -0700 (PDT)
MIME-Version: 1.0
References: <20230523021943.2406847-1-azeemshaikh38@gmail.com> <202305231021.1AF1342BF@keescook>
In-Reply-To: <202305231021.1AF1342BF@keescook>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Wed, 24 May 2023 16:09:48 +0530
Message-ID: <CAO_48GHjU9nSugzjRqDJVU3_HNQuGx4qnTFqayXECd=mFVk_Jw@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,padovan.org,lists.freedesktop.org,amd.com,lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.45:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: CC1BC3E81F
X-Spamd-Bar: --------
Message-ID-Hash: WY5ZSALET3IOEAZ5P6ILATAPV2K4CCVG
X-Message-ID-Hash: WY5ZSALET3IOEAZ5P6ILATAPV2K4CCVG
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Azeem Shaikh <azeemshaikh38@gmail.com>, linux-hardening@vger.kernel.org, Gustavo Padovan <gustavo@padovan.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/sw_sync: Replace all non-returning strlcpy with strscpy
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WY5ZSALET3IOEAZ5P6ILATAPV2K4CCVG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gQXplZW0sDQoNCg0KT24gVHVlLCAyMyBNYXkgMjAyMyBhdCAyMjo1MiwgS2VlcyBDb29r
IDxrZWVzY29va0BjaHJvbWl1bS5vcmc+IHdyb3RlOg0KPg0KPiBPbiBUdWUsIE1heSAyMywgMjAy
MyBhdCAwMjoxOTo0M0FNICswMDAwLCBBemVlbSBTaGFpa2ggd3JvdGU6DQo+ID4gc3RybGNweSgp
IHJlYWRzIHRoZSBlbnRpcmUgc291cmNlIGJ1ZmZlciBmaXJzdC4NCj4gPiBUaGlzIHJlYWQgbWF5
IGV4Y2VlZCB0aGUgZGVzdGluYXRpb24gc2l6ZSBsaW1pdC4NCj4gPiBUaGlzIGlzIGJvdGggaW5l
ZmZpY2llbnQgYW5kIGNhbiBsZWFkIHRvIGxpbmVhciByZWFkDQo+ID4gb3ZlcmZsb3dzIGlmIGEg
c291cmNlIHN0cmluZyBpcyBub3QgTlVMLXRlcm1pbmF0ZWQgWzFdLg0KPiA+IEluIGFuIGVmZm9y
dCB0byByZW1vdmUgc3RybGNweSgpIGNvbXBsZXRlbHkgWzJdLCByZXBsYWNlDQo+ID4gc3RybGNw
eSgpIGhlcmUgd2l0aCBzdHJzY3B5KCkuDQo+ID4gTm8gcmV0dXJuIHZhbHVlcyB3ZXJlIHVzZWQs
IHNvIGRpcmVjdCByZXBsYWNlbWVudCBpcyBzYWZlLg0KPiA+DQo+ID4gWzFdIGh0dHBzOi8vd3d3
Lmtlcm5lbC5vcmcvZG9jL2h0bWwvbGF0ZXN0L3Byb2Nlc3MvZGVwcmVjYXRlZC5odG1sI3N0cmxj
cHkNCj4gPiBbMl0gaHR0cHM6Ly9naXRodWIuY29tL0tTUFAvbGludXgvaXNzdWVzLzg5DQpUaGFu
ayB5b3UgZm9yIHRoZSBwYXRjaDsgSSdsbCBxdWV1ZSBpdCB1cC4NCj4gPg0KPiA+IFNpZ25lZC1v
ZmYtYnk6IEF6ZWVtIFNoYWlraCA8YXplZW1zaGFpa2gzOEBnbWFpbC5jb20+DQo+DQo+IFJldmll
d2VkLWJ5OiBLZWVzIENvb2sgPGtlZXNjb29rQGNocm9taXVtLm9yZz4NCj4NCj4gLS0NCj4gS2Vl
cyBDb29rDQoNCkJlc3QsDQpTdW1pdC4NCg0KLS0gDQpUaGFua3MgYW5kIHJlZ2FyZHMsDQoNClN1
bWl0IFNlbXdhbCAoaGUgLyBoaW0pDQpUZWNoIExlYWQgLSBMQ0csIFZlcnRpY2FsIFRlY2hub2xv
Z2llcw0KTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
