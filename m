Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD468BD524
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 May 2024 21:05:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1E5C4447EF
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 May 2024 19:05:00 +0000 (UTC)
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	by lists.linaro.org (Postfix) with ESMTPS id 550183EC5B
	for <linaro-mm-sig@lists.linaro.org>; Mon,  6 May 2024 19:04:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=auNyh9F4;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.219.176 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-de45dba15feso2353656276.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 06 May 2024 12:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1715022289; x=1715627089; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tW6ZXbuxNCkRRdetUmGMqtCDIB19FjpOX7Yn0qAHvpM=;
        b=auNyh9F4t1s+mcsV6Wl5TezhN4yDY/EeV3fru45C+5lf5V2SvmMyi4XLiF6Vph+Nxa
         1DoDxYhUMUmn33SR2DtdZr9oY/5XLgidRRsOKcyN0YaTvNNEZnbAU+J+lsomwOOshucV
         QtjgLbpu6dityy8u8MlV+5WMwJ47VcdS1zU2UGqJirX+WmOf1OdnsJWbwr3HkrFRfsN/
         55bgW8Wr6/MQz1PzDEWw2SJrg2K8R/timuUV8pX6sEBvk+4aTNCvATlzK2Js81zcqOQ+
         nkAQMkA/F8/kX0VQZ8cVY110g5Rb+6RbM2G2p8yxOXJCmb6fgvq0zQfG9Arkyz77ga5N
         5h6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715022289; x=1715627089;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tW6ZXbuxNCkRRdetUmGMqtCDIB19FjpOX7Yn0qAHvpM=;
        b=nMQNhSgqJql9+ymtImO0kC6tIcpipVhoATj0OwVVD5oi3PjaCochU+PHw2DdMCa+u0
         CqXD+ATArvdQKed1QZLyVwdWZyT2iS2Wh9p9fBi+528TfHFLxiHGMxj+5uOmUrnjGPKT
         vabwpkGs17XxACGPOI1rsqwZj9kWZ89q58XlhJGqrDbPpv9wj8W2+YmkNJ1Lo3iLXQoB
         Uhqkbui7ARcYfWdcyFTaB587dD1v3J69ZG0c8TrHj+zvDM6kON/lLSwb2Xu0y5VzrGX4
         NDg4cDVJmABKDPk+oPsjER0J25NQ2oazqHhqhrqT7cEjSM8idOziOx/RsCsngXHzJ0WT
         JDgQ==
X-Forwarded-Encrypted: i=1; AJvYcCXfHZ50czSVP2S9nmeeGN32WhRnAxFJjg2PO87oyiORbcBPn+9tqxOXPkpTxYmIELy26ahuU/UuQbk3ffK+f1QaHLUhBsOvZY8IeQixGX4=
X-Gm-Message-State: AOJu0YwImW73avwoy8Sa22K1GV7fu19lD92iM0UWFcTUew3zFsUjsEOD
	aAC5kfvPxqg+GvNa+ARh9Gd61f3chcu2PyUSRyNG/CGqMEBTpeErorYlKJNE1E0i+guicaOOjSU
	lYTH+GBADK4JvK9oRLDvaK/zoin+ulyKBFC6n
X-Google-Smtp-Source: AGHT+IEHS4oNIdmD9nG484I0nYBm3aQGegCbP8GsgU98ex98+CK429DdDBUHk35GcJvZBDxds6QwOF+YUNMpYcLD1EA=
X-Received: by 2002:a5b:1c7:0:b0:dcb:f7a0:b031 with SMTP id
 f7-20020a5b01c7000000b00dcbf7a0b031mr9837906ybp.50.1715022288568; Mon, 06 May
 2024 12:04:48 -0700 (PDT)
MIME-Version: 1.0
References: <20240327022903.776-1-justinjiang@vivo.com> <5cf29162-a29d-4af7-b68e-aac5c862d20e@amd.com>
 <cc7defae-60c1-4cc8-aee5-475d4460e574@vivo.com> <23375ba8-9558-4886-9c65-af9fe8e8e8b6@amd.com>
 <CABdmKX2Kf4ZmVzv3LGTz2GyP-9+rAtFY9hSAxdkrwK8mG0gDvQ@mail.gmail.com>
 <e55cad9b-a361-4d27-a351-f6a4f5b8b734@vivo.com> <40ac02bb-efe2-4f52-a4f2-7b56d9b93d2c@amd.com>
 <4fedd80c-d5b6-4478-bfd3-02d1ee1a26e5@vivo.com> <aab5ec51-fcff-44f2-a4f5-2979bd776a03@amd.com>
 <2ebca2fd-9465-4e64-b3cc-ffb88ef87800@vivo.com> <d4209754-5f26-422d-aca0-45cccbc44ad0@amd.com>
 <289b9ad6-58a3-aa39-48ae-a244fe108354@quicinc.com> <CABdmKX3Zu8LihAFjMuUHx4xzZoqgmY7OKdyVz-D26gM-LECn6A@mail.gmail.com>
 <8ca45837-cbed-28da-4a6f-0dcec8294f51@quicinc.com> <83605228-92ee-b666-d894-1c145af2e5ab@quicinc.com>
In-Reply-To: <83605228-92ee-b666-d894-1c145af2e5ab@quicinc.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Mon, 6 May 2024 12:04:36 -0700
Message-ID: <CABdmKX2MWU9-9YN46PXx-Jy-O9CHMv8hCkvArd7BbWUBs=GPnw@mail.gmail.com>
To: Charan Teja Kalla <quic_charante@quicinc.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 550183EC5B
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.82 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.82)[99.21%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	URIBL_BLOCKED(0.00)[mail-yb1-f176.google.com:rdns,mail-yb1-f176.google.com:helo];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.176:from];
	RCPT_COUNT_SEVEN(0.00)[9];
	DWL_DNSWL_BLOCKED(0.00)[google.com:dkim];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: H3TAIPYXCHLXCNSW3GWXHZZY5KTGPRU4
X-Message-ID-Hash: H3TAIPYXCHLXCNSW3GWXHZZY5KTGPRU4
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, zhiguojiang <justinjiang@vivo.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, opensource.kernel@vivo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dmabuf: fix dmabuf file poll uaf issue
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H3TAIPYXCHLXCNSW3GWXHZZY5KTGPRU4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBNYXkgNiwgMjAyNCBhdCAyOjMw4oCvQU0gQ2hhcmFuIFRlamEgS2FsbGENCjxxdWlj
X2NoYXJhbnRlQHF1aWNpbmMuY29tPiB3cm90ZToNCj4NCj4gSGkgVEosDQo+DQo+IFNlZW1zIEkg
aGF2ZSBnb3QgYW5zd2VycyBmcm9tIFsxXSwgd2hlcmUgaXQgaXMgYWdyZWVkIHVwb24gZXBvbGwo
KSBpcw0KPiB0aGUgc291cmNlIG9mIGlzc3VlLg0KPg0KPiBUaGFua3MgYSBsb3QgZm9yIHRoZSBk
aXNjdXNzaW9uLg0KPg0KPiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8wMDAwMDAw
MDAwMDAyZDYzMWYwNjE1OTE4ZjFlQGdvb2dsZS5jb20vDQo+DQo+IFRoYW5rcw0KPiBDaGFyYW4N
Cg0KT2ggbWFuLCBxdWl0ZSBhIHNldCBvZiB0aHJlYWRzIG9uIHRoaXMgb3ZlciB0aGUgd2Vla2Vu
ZC4gVGhhbmtzIGZvciB0aGUgbGluay4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
