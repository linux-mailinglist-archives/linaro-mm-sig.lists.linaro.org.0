Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C215E7442FC
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jun 2023 21:55:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D77F843E3B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jun 2023 19:55:17 +0000 (UTC)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	by lists.linaro.org (Postfix) with ESMTPS id 814A83E95C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Jun 2023 19:54:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20221208 header.b=tMKxA1rv;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.219.170 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-c15a5ed884dso2209527276.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Jun 2023 12:54:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1688154893; x=1690746893;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qwJVEajk6sjD7pKhMJ8nLrUS9jcG5+GhwtGSJo7hXhE=;
        b=tMKxA1rvuVOfttdgJoZv6MaLRnwVg8j+/TriQO8mdTDOazSNrNi+WwUi/Gc1aPop/Q
         U5lyBwHF2Pk0gd/bvRv9zHYMvRDFntewjNDT1HtD4ZzrqkZMDoIyRWK/obI/N2yKBfmN
         lJpSYB7jO6SRcGocpniDZqWmTKW4Ztx5SXeoLT60DQcH82IfKlOxlFt7ntLGgi6/3856
         G+2R/94O+RPc8LvSRFH7hymsPvDQbs+sYiTuTBzPR5gMz5VTJN8uhHDfIRGRyGqkPfgv
         3MTlbtcKL+5CdJgViSLzkPHkLbXjOJkwyUUHaNvp2xegLtSvJY8YjXt3PdY9Rk6tm1FK
         nKZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688154893; x=1690746893;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qwJVEajk6sjD7pKhMJ8nLrUS9jcG5+GhwtGSJo7hXhE=;
        b=XEYNSSSen30BO+WXgK3nBc14Nid1bcVxgmew3ZtN0IUtH9rgrwWiwjAPTSBXU7Hvbb
         1yQRbS8fbjCRes/DpIfs747ltc4oXdHATuEIXEPBIhYgnPa6zcfpA8n2Mp5TNNktIsLk
         Z+Tm4KFOkuugTidTtvB6NvKXecgr7oRw/qzErv0VSY4FU5Qdo+TD7TZ5nABZDWl50v0/
         7ihkQqgLT7Gn9zWcFll/ipSyowSDxXmYPvAAbbazNvySQQRR+Kexybjo0KvHzWVHveue
         N1Welj1XymgyUwca5vbumYy8IH3oG0ivszoYeoaVVEeiY87sF1l1xF/tAo/IpUWFk6yr
         1yQA==
X-Gm-Message-State: ABy/qLZPI4NfxD3QTF+O8zpwG5/AKepqZz5TSlKX54w7MjktDFv7DK8Z
	3EPrtzofF90WOkQbNLsk+K4y5SmuMSYzHBs9Ua+Dpg==
X-Google-Smtp-Source: APBJJlEQ1nYLUOhJ/Uuqs45GkvzI1ma7uVmZgBTHXjG9xRnpwZWNf4CfnE8yBJ7BW9uSQfZJSO3GHFjEeUi7rjPlsK4=
X-Received: by 2002:a25:add0:0:b0:c01:55d:91d with SMTP id d16-20020a25add0000000b00c01055d091dmr3427876ybe.45.1688154892929;
 Fri, 30 Jun 2023 12:54:52 -0700 (PDT)
MIME-Version: 1.0
References: <20230630162111.3051783-1-jstultz@google.com>
In-Reply-To: <20230630162111.3051783-1-jstultz@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Fri, 30 Jun 2023 12:54:42 -0700
Message-ID: <CABdmKX1qpMTaT=NaG5B+43gaWtoNK=jR5yysKNXMyeyYW10uDQ@mail.gmail.com>
To: John Stultz <jstultz@google.com>
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-0.959];
	DKIM_TRACE(0.00)[google.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.170:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 814A83E95C
X-Spamd-Bar: --------
Message-ID-Hash: WC7OGFR5M26QCJOZ4U57S5MDN3DM5IPE
X-Message-ID-Hash: WC7OGFR5M26QCJOZ4U57S5MDN3DM5IPE
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: LKML <linux-kernel@vger.kernel.org>, Laura Abbott <labbott@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kernel-team@android.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] MAINTAINERS: Remove Laura Abbott from DMA-BUF HEAPS FRAMEWORK
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WC7OGFR5M26QCJOZ4U57S5MDN3DM5IPE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBKdW4gMzAsIDIwMjMgYXQgOToyMeKAr0FNIEpvaG4gU3R1bHR6IDxqc3R1bHR6QGdv
b2dsZS5jb20+IHdyb3RlOg0KPg0KPiBMYXVyYSdzIGVtYWlsIGFkZHJlc3MgaGFzIG5vdCBiZWVu
IHZhbGlkIGZvciBxdWl0ZSBhd2hpbGUgbm93LA0KPiBzbyB3YW50ZWQgdG8gY2xlYW4gdXAgdGhl
IHJldmlld2VyIGxpc3QgaGVyZS4NCj4NCj4gSSByZWFjaGVkIG91dCB0byBMYXVyYSB3aG8gc2Fp
ZCBpdCBtYWRlIHNlbnNlIHRvIGRyb3AgaGVyIGZyb20NCj4gdGhlIGxpc3QsIHNvIHRoaXMgcGF0
Y2ggZG9lcyB0aGF0Lg0KPg0KPiBJIGRvIHdhbnQgdG8gcmVjb2duaXplIExhdXJhJ3MgbG9uZyB0
aW1lIGNvbnRyaWJ1dGlvbiB0byB0aGlzDQo+IGFyZWEgYW5kIGhlciBwcmV2aW91cyBJT04gbWFp
bnRhaW5lcnNoaXAsIGFzIHRoaXMgY291bGRuJ3QNCj4gaGF2ZSBnb25lIHVwc3RyZWFtIHdpdGhv
dXQgaGVyIHByaW9yIGVmZm9ydHMuIE1hbnkgdGhhbmtzIQ0KPg0KPiBDYzogTGF1cmEgQWJib3R0
IDxsYWJib3R0QGtlcm5lbC5vcmc+DQo+IENjOiBULkouIE1lcmNpZXIgPHRqbWVyY2llckBnb29n
bGUuY29tPg0KPiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4NCj4g
Q2M6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPg0K
PiBDYzogQnJpYW4gU3RhcmtleSA8QnJpYW4uU3RhcmtleUBhcm0uY29tPg0KPiBDYzogSm9obiBT
dHVsdHogPGpzdHVsdHpAZ29vZ2xlLmNvbT4NCj4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVs
Lm9yZw0KPiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQo+IENjOiBrZXJuZWwtdGVhbUBhbmRyb2lkLmNvbQ0K
PiBBY2tlZC1ieTogTGF1cmEgQWJib3R0IDxsYWJib3R0QGtlcm5lbC5vcmc+DQo+IFNpZ25lZC1v
ZmYtYnk6IEpvaG4gU3R1bHR6IDxqc3R1bHR6QGdvb2dsZS5jb20+DQoNClJldmlld2VkLWJ5OiBU
LkouIE1lcmNpZXIgPHRqbWVyY2llckBnb29nbGUuY29tPg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
