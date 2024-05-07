Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3978BE458
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 15:39:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D69BF44001
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 13:39:42 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	by lists.linaro.org (Postfix) with ESMTPS id 6C9A23ED6D
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 May 2024 13:39:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=P03gAaTk;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.221.52) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-34cba0d9a3eso240480f8f.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 07 May 2024 06:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1715089170; x=1715693970; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=M/ueNO6VgphQOXA5uS4/0Wfhc/WsOURk1MmZZT9vU18=;
        b=P03gAaTkBaXIcgAGkWji1pDn8fu7foIGZKyDMnZe1KcebxzlQluPSza8e0zhfBA+XF
         wpB4nRPgmuPZi2ghLrN99g2jWuC2wmRWOEH+cxV67Cu+GlkQTt1atZzn6f8bDwVMFzNS
         pjslqLkxEHJQtahiyKDeWhMIfqxLtnqBatLAo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715089170; x=1715693970;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M/ueNO6VgphQOXA5uS4/0Wfhc/WsOURk1MmZZT9vU18=;
        b=KOcbpFSnSGzmdjoBLYWoopR0TFUrdetdHFkMhkbZUQUnJ41wxHEbMtZCTcUkw+t2DF
         w7LpZ/C2VCu9+MUxpOSLGgouIpGknI6lL8p2uvuwYDNG4mmhzQkS2p9p7LTmNUfbQYWB
         Gb5h+wmCSlBsKfjj9uyxNW8dDUIn0x/Ta5g7ElK4WBzRGp5hKvVNcZElvYGglYIdOWPe
         pO7dvJI5ATFVfZPWUKtTlpUaVy8mnaMcYGweeOkpS9n5eapw79UhGax/YIo62xRPTL5/
         dVeTWe4q1/ag+L9Jf0LnzLaAnYt3jV8LEqgQuBP9wx0xNo79BQpeGEqOHa7n29HRmFyH
         Wlbg==
X-Forwarded-Encrypted: i=1; AJvYcCXTchMTg3/c/iSdkp41uu3ESQsgtsBBzk33mst18TZu0lM97cBlpYSFTyahI+riUr12QhkrbqcGT1AyzpAGIx7jlz3CEV0ljPCiG3HHahQ=
X-Gm-Message-State: AOJu0YyzOuswYortqJrB6ks0TESS0wiacrxd9CNGPOjx/CDlhjRS7Hfh
	w7xFujqKxGRAgV9DyIrHnWID7TuGgiQrkdAkOvqTsLKw3e+Ww94EoyQTG9msqgw=
X-Google-Smtp-Source: AGHT+IFFkAJxLxOoCG8nFFCsSuXqv/YiZ7tcMHz5O7ctQR4tHzkmXOo+SmkFGR5DkNaIUKepBhk//Q==
X-Received: by 2002:a05:600c:5118:b0:418:9941:ca28 with SMTP id o24-20020a05600c511800b004189941ca28mr9213068wms.2.1715089170283;
        Tue, 07 May 2024 06:39:30 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id h18-20020a056000001200b0034c78001f6asm12974839wrx.109.2024.05.07.06.39.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 May 2024 06:39:29 -0700 (PDT)
Date: Tue, 7 May 2024 15:39:27 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <ZjovD5WaWjknd-qv@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	"T.J. Mercier" <tjmercier@google.com>,
	Charan Teja Kalla <quic_charante@quicinc.com>,
	zhiguojiang <justinjiang@vivo.com>,
	Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	linux-kernel@vger.kernel.org, opensource.kernel@vivo.com
References: <4fedd80c-d5b6-4478-bfd3-02d1ee1a26e5@vivo.com>
 <aab5ec51-fcff-44f2-a4f5-2979bd776a03@amd.com>
 <2ebca2fd-9465-4e64-b3cc-ffb88ef87800@vivo.com>
 <d4209754-5f26-422d-aca0-45cccbc44ad0@amd.com>
 <289b9ad6-58a3-aa39-48ae-a244fe108354@quicinc.com>
 <CABdmKX3Zu8LihAFjMuUHx4xzZoqgmY7OKdyVz-D26gM-LECn6A@mail.gmail.com>
 <8ca45837-cbed-28da-4a6f-0dcec8294f51@quicinc.com>
 <83605228-92ee-b666-d894-1c145af2e5ab@quicinc.com>
 <CABdmKX2MWU9-9YN46PXx-Jy-O9CHMv8hCkvArd7BbWUBs=GPnw@mail.gmail.com>
 <8915fcc1-d8f1-48c2-9e51-65159aaa5a3b@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8915fcc1-d8f1-48c2-9e51-65159aaa5a3b@amd.com>
X-Operating-System: Linux phenom 6.6.15-amd64 
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6C9A23ED6D
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.30 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.52:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	DWL_DNSWL_BLOCKED(0.00)[ffwll.ch:dkim];
	DMARC_NA(0.00)[ffwll.ch];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.221.52:from];
	DNSWL_BLOCKED(0.00)[2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa:received];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[ffwll.ch:+]
X-Rspamd-Action: no action
Message-ID-Hash: IHBY7TGCON6BO2XW474PVYQSQYUQTH2V
X-Message-ID-Hash: IHBY7TGCON6BO2XW474PVYQSQYUQTH2V
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "T.J. Mercier" <tjmercier@google.com>, Charan Teja Kalla <quic_charante@quicinc.com>, zhiguojiang <justinjiang@vivo.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, opensource.kernel@vivo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dmabuf: fix dmabuf file poll uaf issue
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IHBY7TGCON6BO2XW474PVYQSQYUQTH2V/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBNYXkgMDcsIDIwMjQgYXQgMTI6MTA6MDdQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gQW0gMDYuMDUuMjQgdW0gMjE6MDQgc2NocmllYiBULkouIE1lcmNpZXI6DQo+
ID4gT24gTW9uLCBNYXkgNiwgMjAyNCBhdCAyOjMw4oCvQU0gQ2hhcmFuIFRlamEgS2FsbGENCj4g
PiA8cXVpY19jaGFyYW50ZUBxdWljaW5jLmNvbT4gd3JvdGU6DQo+ID4gPiBIaSBUSiwNCj4gPiA+
IA0KPiA+ID4gU2VlbXMgSSBoYXZlIGdvdCBhbnN3ZXJzIGZyb20gWzFdLCB3aGVyZSBpdCBpcyBh
Z3JlZWQgdXBvbiBlcG9sbCgpIGlzDQo+ID4gPiB0aGUgc291cmNlIG9mIGlzc3VlLg0KPiA+ID4g
DQo+ID4gPiBUaGFua3MgYSBsb3QgZm9yIHRoZSBkaXNjdXNzaW9uLg0KPiA+ID4gDQo+ID4gPiBb
MV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8wMDAwMDAwMDAwMDAyZDYzMWYwNjE1OTE4
ZjFlQGdvb2dsZS5jb20vDQo+ID4gPiANCj4gPiA+IFRoYW5rcw0KPiA+ID4gQ2hhcmFuDQo+ID4g
T2ggbWFuLCBxdWl0ZSBhIHNldCBvZiB0aHJlYWRzIG9uIHRoaXMgb3ZlciB0aGUgd2Vla2VuZC4g
VGhhbmtzIGZvciB0aGUgbGluay4NCj4gDQo+IFllYWggYW5kIGl0IGFsc28gaGFzIHNvbWUgaW50
ZXJlc3Rpbmcgc2lkZSBjb25jbHVzaW9uOiBXZSBzaG91bGQgcHJvYmFibHkNCj4gdGVsbCBwZW9w
bGUgdG8gc3RvcCB1c2luZyBETUEtYnVmIHdpdGggZXBvbGwuDQo+IA0KPiBUaGUgYmFja2dyb3Vu
ZCBpcyB0aGF0IHRoZSBtdXRleCBhcHByb2FjaCBlcG9sbCB1c2VzIHRvIG1ha2UgZmlsZXMgZGlz
YXBwZWFyDQo+IGZyb20gdGhlIGludGVyZXN0IGxpc3Qgb24gY2xvc2UgcmVzdWx0cyBpbiB0aGUg
ZmFjdCB0aGF0IGVhY2ggZmlsZSBjYW4gb25seQ0KPiBiZSBwYXJ0IG9mIGEgc2luZ2xlIGVwb2xs
IGF0IGEgdGltZS4NCj4gDQo+IE5vdyBzaW5jZSBETUEtYnVmIGlzIGJ1aWxkIGFyb3VuZCB0aGUg
aWRlYSB0aGF0IHdlIHNoYXJlIHRoZSBidWZmZXINCj4gcmVwcmVzZW50YXRpb24gYXMgZmlsZSBi
ZXR3ZWVuIHByb2Nlc3NlcyBpdCBtZWFucyB0aGF0IG9ubHkgb25lIHByb2Nlc3MgYXQgYQ0KPiB0
aW1lIGNhbiB1c2UgZXBvbGwgd2l0aCBlYWNoIERNQS1idWYuDQo+IA0KPiBTbyBmb3IgZXhhbXBs
ZSBpZiBhIHdpbmRvdyBtYW5hZ2VyIHVzZXMgZXBvbGwgZXZlcnl0aGluZyBpcyBmaW5lLiBJZiBh
DQo+IGNsaWVudCBpcyB1c2luZyBlcG9sbCBldmVyeXRoaW5nIGlzIGZpbmUgYXMgd2VsbC4gQnV0
IGlmICpib3RoKiB1c2UgZXBvbGwgYXQNCj4gdGhlIHNhbWUgdGltZSBpdCB3b24ndCB3b3JrLg0K
PiANCj4gVGhpcyBjYW4gbGVhZCB0byByYXRoZXIgZnVubnkgYW5kIGhhcmQgdG8gZGVidWcgY29t
YmluYXRpb25zIG9mIGZhaWx1cmVzIGFuZA0KPiBJIHRoaW5rIHdlIG5lZWQgdG8gZG9jdW1lbnQg
dGhpcyBsaW1pdGF0aW9uIGFuZCBleHBsaWNpdGx5IHBvaW50IGl0IG91dC4NCg0KT2ssIEkgdGVz
dGVkIHRoaXMgd2l0aCBhIHNtYWxsIEMgcHJvZ3JhbSwgYW5kIHlvdSdyZSBtaXhpbmcgdGhpbmdz
IHVwLg0KSGVyZSdzIHdoYXQgSSBnb3QNCg0KLSBZb3UgY2Fubm90IGFkZCBhIGZpbGUgdHdpY2Ug
dG8gdGhlIHNhbWUgZXBvbGwgZmlsZS9mZC4gU28gdGhhdCBwYXJ0IGlzDQogIGNvcnJlY3QsIGFu
ZCBhbHNvIG15IHVuZGVyc3RhbmRpbmcgZnJvbSByZWFkaW5nIHRoZSBrZXJuZWwgY29kZS4NCg0K
LSBZb3UgY2FuIGFkZCB0aGUgc2FtZSBmaWxlIHRvIHR3byBkaWZmZXJlbnQgZXBvbGwgZmlsZSBp
bnN0YWNlcy4gV2hpY2gNCiAgbWVhbnMgaXQncyB0b3RhbGx5IGZpbmUgdG8gdXNlIGVwb2xsIG9u
IGEgZG1hX2J1ZiBpbiBkaWZmZXJlbnQgcHJvY2Vzc2VzDQogIGxpa2UgYm90aCBpbiB0aGUgY29t
cG9zaXRvciBhbmQgaW4gY2xpZW50cy4NCg0KLSBTdWJzdGFudGlhbGx5IG1vcmUgZW50ZXJ0YWlu
aW5nLCB5b3UgY2FuIG5lc3QgZXBvbGwgaW5zdGFuY2VzLCBhbmQgZS5nLg0KICBhZGQgYSAybmQg
ZXBvbGwgZmlsZSBhcyBhbiBldmVudCB0byB0aGUgZmlyc3Qgb25lLiBUaGF0IHdheSB5b3UgY2Fu
IGFkZA0KICB0aGUgc2FtZSBmaWxlIHRvIGJvdGggZXBvbGwgZmRzLCBhbmQgc28gZW5kIHVwIHdp
dGggdGhlIHNhbWUgZmlsZQ0KICBlc3NlbnRpYWxseSBiZWluZyBhZGRlZCB0d2ljZSB0byB0aGUg
dG9wLWxldmVsIGVwb2xsIGZpbGUuIFNvIGV2ZW4NCiAgd2l0aGluIG9uZSBhcHBsaWNhdGlvbiB0
aGVyZSdzIG5vIHJlYWwgaXNzdWUgd2hlbiBlLmcuIGRpZmZlcmVudA0KICB1c2Vyc3BhY2UgZHJp
dmVycyBhbGwgd2FudCB0byB1c2UgZXBvbGwgb24gdGhlIHNhbWUgZmQsIGJlY2F1c2UgeW91IGNh
bg0KICBqdXN0IHRocm93IGluIGFub3RoZXIgbGV2ZWwgb2YgZXBvbGwgYW5kIGl0J3MgZmluZSBh
Z2FpbiBhbmQgeW91IHdvbid0DQogIGdldCBhbiBFRVhJU1RTIG9uIEVQT0xMX0NUTF9BREQuDQoN
CiAgQnV0IEkgYWxzbyBkb24ndCB0aGluayB3ZSBoYXZlIHRoaXMgaXNzdWUgcmlnaHQgbm93IGFu
eXdoZXJlLCBzaW5jZSBpdCdzDQogIGtpbmRhIGEgZ2VuZXJhbCBlcG9sbCBpc3N1ZSB0aGF0IGhh
cHBlbnMgd2l0aCBhbnkgZHVwbGljYXRlZCBmaWxlLg0KDQpTbyBJIGRvbid0IHRoaW5rIHRoZXJl
J3MgYW55IHJlYXNvbnMgdG8gcmVjb21tZW5kIGFnYWluc3QgdXNpbmcgZXBvbGwgb24NCmRtYS1i
dWYgZmQgKG9yIHN5bmNfZmlsZSBvciBkcm1fc3luY29iaiBvciBhbnkgb2YgdGhlIHNoYXJpbmcg
cHJpbWl0aXZlcw0Kd2UgaGF2ZSByZWFsbHkpLg0KDQpDaGVlcnMsIFNpbWENCi0tIA0KRGFuaWVs
IFZldHRlcg0KU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uDQpodHRwOi8vYmxv
Zy5mZndsbC5jaA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
