Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9S+yJCA2VmoT1gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 15:14:08 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D82754F07
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 15:14:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=dc4ePEBF;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DB80340503
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 13:14:06 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by lists.linaro.org (Postfix) with ESMTPS id A7CEE3EA4C
	for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2026 13:14:02 +0000 (UTC)
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-697bd21fdc2so1731355a12.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2026 06:14:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784034841; x=1784639641; darn=lists.linaro.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ny5+3yiTMDoQJssQpPJVjH5n2qiBSxJZzbYo0RMA4qo=;
        b=dc4ePEBFdvdt/rDpcLI3koWwBaNm6JGL60THWgjZO4cdqaXcQu+9QE1Zsk2rBLdD4t
         5PrT1DDrLFraGBsfJC9V3eDG2BpW7JWIs3JkzhsLeWmLqUTzr4M/RhndHs6voCtx++Kc
         MVOfGN+P3+QO1L/N8GJ6KCS3bcUfDSwiiYDAIVEffYD1ONgt5AXK9wJCrdaNnK2aa4ha
         UP4woMq6/6k2ysJnp0NFFF7/imC5FN3idir/RBbAxPJ842jdHhhpSFcZEkjO1TJ2jF3P
         74wyMsUszmxPme/QHZw2tWXsQ3MmrpWb8Xjw1Q+RAmFk8p08E5gvNoiJgckhqZPPhrZy
         qkvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784034841; x=1784639641;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ny5+3yiTMDoQJssQpPJVjH5n2qiBSxJZzbYo0RMA4qo=;
        b=RW2mHwNF08p7lK6+TY5veID3/DzlO5P7IE+p7iQwrpzitpyTxSg3WtJP/rePhdN+38
         lmYkvQv+URZ5X+qFdW2qf0Jwjhe8fRgLi3e4Dfz9b6Ti6mvHdSMQRtZaa+D36UBO9zHW
         P5ZBvp9+GzqlkDqDwHapHAX9UAEOzqcd6VUZIe2TAXhzwvPA3dyYqefNHJvDVJSetN5Z
         ZmXr5mV7vAkYtQGrFzm2Z8i+Nk1Ro5u//uK2CmMnT3pWWdzHMrq53gt2wDbD5IiKbNLP
         9McbqubWMghWQkcng2bk0im/Bio0uxQgJ0kYRnms/0Sr2DBT5cDxF8Xa/c9nVOLuSSar
         5jdA==
X-Forwarded-Encrypted: i=1; AHgh+RovL1X1pO98fiYtlep2M7UcrRZiQX60K7Ypl3Ov9+N/qA4a2I822qzs8jiIv4j7sWXgD2wS+jYpPstrz/R8@lists.linaro.org
X-Gm-Message-State: AOJu0Yy46ZA1tcaocjfJxNZzYb+LX80NBVs23FcN4KkkuHTyIjWMnKJH
	9wPcJrbOPtZ5uWQTGtjCi4gduHYwJMFYuHI0dRuzGHzf05Po0i8V0Usf
X-Gm-Gg: AfdE7clo6nniYMPr8cACyk2AWeBb49jOb6CH3BKbLW/q+s656k3MMqcs5pMV36VAzlh
	VXUfZOim/piHRLbp8y41+uDZzsIXr6h7y2Ld6I8IweUt6iARb9/ahJpSwyKQWGDnnrLOArmmP+a
	5hIoxmznyTr3ITAby52NoGh4b1+vz6qfTItPpCZjs/dzUCK+XAV9UYstWgUrS9vvVL69DcQ9Lcr
	b8y41P3V/Fd70AANNDei39hVZ/LvmFzmbmxylf1YV/452udNl1EYS0d/yp5GMFxdLy9AZv34HbI
	qIEhnDs0LqO5opX5T5C5Ky782Oc7HFZHp3pxZ/p+Ng971TfY+TPlxzTZkWW+ij7pLKgRhF7HXLn
	etPxP3nHA2nTMpMJ1lNBb5Kw9meG2wISMxECX5ocpzrp1ANfC6KwJH3gA2hBLCWY85UIjX8k8vV
	R2BzaWXIxvG0CRfe0cU0GJf/447zKWhVNixeP0S8sTmKSjJF1jhg==
X-Received: by 2002:a05:6402:1e8c:b0:683:e394:cc0c with SMTP id 4fb4d7f45d1cf-69c5ef84424mr6428415a12.4.1784034841275;
        Tue, 14 Jul 2026 06:14:01 -0700 (PDT)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-69cd2952836sm1533316a12.27.2026.07.14.06.14.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 06:14:00 -0700 (PDT)
Date: Tue, 14 Jul 2026 14:13:59 +0100
From: David Laight <david.laight.linux@gmail.com>
To: Baineng Shou <shoubaineng@gmail.com>
Message-ID: <20260714141359.7758575d@pumpkin>
In-Reply-To: <20260714114654.3885457-2-shoubaineng@gmail.com>
References: <CABdmKX21NHc2=9Sk2F-BFpu6is0vTg-QXLE+wiFNEPdsWWjvog@mail.gmail.com>
	<20260714114654.3885457-1-shoubaineng@gmail.com>
	<20260714114654.3885457-2-shoubaineng@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: AINMABH6ALS2CMGQN27CL7MPYZDAPKOV
X-Message-ID-Hash: AINMABH6ALS2CMGQN27CL7MPYZDAPKOV
X-MailFrom: david.laight.linux@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, "T . J . Mercier" <tjmercier@google.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Sandeep Patil <sspatil@android.com>, "Andrew F . Davis" <afd@ti.com>, Srinivas Kandagatla <srini@kernel.org>, stable@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 1/2] dma-buf: dma-heap: don't publish fd before copy_to_user() succeeds
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AINMABH6ALS2CMGQN27CL7MPYZDAPKOV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.19 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:shoubaineng@gmail.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:tjmercier@google.com,m:benjamin.gaignard@collabora.com,m:Brian.Starkey@arm.com,m:jstultz@google.com,m:sspatil@android.com,m:afd@ti.com,m:srini@kernel.org,m:stable@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[davidlaightlinux@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[davidlaightlinux@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,pumpkin:mid,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C9D82754F07

T24gVHVlLCAxNCBKdWwgMjAyNiAxOTo0Njo1MyArMDgwMA0KQmFpbmVuZyBTaG91IDxzaG91YmFp
bmVuZ0BnbWFpbC5jb20+IHdyb3RlOg0KDQo+IERNQV9IRUFQX0lPQ1RMX0FMTE9DIGFsbG9jYXRl
cyBhIGRtYS1idWYgYW5kIGluc3RhbGxzIGFuIGZkIGludG8gdGhlDQo+IGNhbGxlcidzIGZkIHRh
YmxlIHZpYSBkbWFfYnVmX2ZkKCkgLT4gZmRfaW5zdGFsbCgpIGJlZm9yZQ0KPiBkbWFfaGVhcF9p
b2N0bCgpIGNvcGllcyB0aGUgcmVzdWx0IGJhY2sgdG8gdXNlcnNwYWNlLiAgSWYgdGhlIHRyYWls
aW5nDQo+IGNvcHlfdG9fdXNlcigpIGZhaWxzLCB1c2Vyc3BhY2UgbmV2ZXIgbGVhcm5zIHRoZSBm
ZCBudW1iZXIsIGJ1dCB0aGUNCj4gZmQgKGFuZCB0aGUgdW5kZXJseWluZyBkbWEtYnVmIHJlZmVy
ZW5jZSkgYXJlIGFscmVhZHkgdmlzaWJsZSB0bw0KPiBvdGhlciB0aHJlYWRzIGluIHRoZSBzYW1l
IHByb2Nlc3MgYW5kIGFyZSBsZWFrZWQgZm9yIHRoZSBsaWZldGltZSBvZg0KPiB0aGUgcHJvY2Vz
cy4NCj4gDQo+IFRoZSBvYnZpb3VzICJjbG9zZSBpdCBvbiB0aGUgZmFpbHVyZSBwYXRoIiBmaXgg
aXMgdW5zYWZlOiBvbmNlDQo+IGZkX2luc3RhbGwoKSBoYXMgcnVuLCBhbm90aGVyIHRocmVhZCBj
YW4gYWxyZWFkeSBkdXAoKSB0aGUgZmQsIHNlbmQNCj4gaXQgdmlhIFNDTV9SSUdIVFMsIG9yIGNs
b3NlKCkgaXQgYW5kIGxldCBpdHMgbnVtYmVyIGJlIHJldXNlZCwgc28gYQ0KPiBzdWJzZXF1ZW50
IGNsb3NlX2ZkKCkgZnJvbSB0aGUgaW9jdGwgcGF0aCBjYW4gb3BlcmF0ZSBvbiBhbiB1bnJlbGF0
ZWQNCj4gZmlsZS4gIFRoaXMgd2FzIHBvaW50ZWQgb3V0IGJ5IENocmlzdGlhbiBLw7ZuaWcgb24g
djEgWzFdLg0KLi4uDQoNCk15IDJjOg0KDQpUaGUgb3RoZXIgb3B0aW9uIGlzIGp1c3QgdG8gbGVh
dmUgaXQgYXMgYSAncHJvYmxlbSBmb3IgdXNlciBzcGFjZScuDQpObyByZWFzb25hYmxlIHByb2dy
YW0gaXMgZ29pbmcgdG8gaGFuZGxlIHRoZSBFRkFVTFQgcmV0dXJuIGJ5IGRvaW5nDQphbnl0aGlu
ZyBvdGhlciB0aGFuIGV4aXRpbmcuDQpFdmVuIGdldHRpbmcgYW4gRUZBVUxUIGlzIHJlYWxseSBh
biBpbmRpY2F0aW9uIHRoYXQgdGhlIGFwcGxpY2F0aW9uDQppcyBhbHJlYWR5IGluIGEgcmVhbCBt
ZXNzIC0gbW9zdCBsaWtlbHkgd2l0aCBhIGJhZGx5IGNvcnJ1cHRlZCBoZWFwLg0KDQpBbnl0aGlu
ZyBlbHNlIGxlYXZlcyBlcnJvciByZWNvdmVyeSBjb2RlIGluIHRoZSBrZXJuZWwgdGhhdCBpcyBw
cmV0dHkNCm11Y2ggbmV2ZXIgZXhlY3V0ZWQgYW5kIG9wZW4gdG8gYSB2YXJpZXR5IG9mIGJ1Z3Mu
DQpXaGlsZSB0aGUgcmVjb3ZlcnkgaGVyZSBpcyBwcm9iYWJseSBvaywgdGhlcmUgYXJlIHNvbWUg
c29ja29wdCBjYWxscw0Kd2hlcmUgaXQgaXMgYWxsIG1vcmUgY29tcGxpY2F0ZWQuDQoNCglEYXZp
ZA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
