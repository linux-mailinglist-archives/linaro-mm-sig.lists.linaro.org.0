Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CDF48BEAFF
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 20:00:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9118244894
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 18:00:58 +0000 (UTC)
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	by lists.linaro.org (Postfix) with ESMTPS id 07A443F02C
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 May 2024 18:00:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=02HjJUSD;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.219.176 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-de46b113a5dso3474002276.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 07 May 2024 11:00:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1715104847; x=1715709647; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HL+ln2vLAazbLqwL47bYmOmnDjxG1bXnX9QaBIaL77Y=;
        b=02HjJUSDNjDOtyHC+NbaWAo7z60HFIzXgYECXZW085laPYQD2dcSy1K/uWyRqS5r+W
         Xzpb9CRjxcRkkgZxmvL99EEjjsJ36rrPPw1qCMQMpcI0TCC6+L2nRpFk1f6haDLpHXDH
         Edv30at23CBdNpBo9Y1x8PuTpKM/NdECjmQGJx+uP16sovdCe+2lQL4Im/UJGgt1gc/W
         CWXhnSIeREACcGCE0wPypuIuttSE/SSrqIL2sL2zGSO46erGUlaHbW159Zt86Sr06hoG
         8Y/SVr65A621ZP6mnRqFXC5Elu6bDJNlXIrbwJD1FxeDO65edLxkfte/fB6JCDphv+Hv
         47Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715104847; x=1715709647;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HL+ln2vLAazbLqwL47bYmOmnDjxG1bXnX9QaBIaL77Y=;
        b=WIiAI6zFKMiih6L8oTrmwFTgWlnVwCwvXrhd2VV3igZeR70+GgcqFn/wXoaEndn8xq
         ug40N+J8KYemAgzmnvoJGFr5smiKxmJwMLWsKb+t53ndQxfoY1NFdUi9oKrSkOJfjedF
         SPL6QBstJBhl5H/glQNoH4D3FByOL/wHepGvIvpY8kqgOrl1gsSKuVbvN8QZ6AIEPxiQ
         5+hnCpkkweUBzzrL2er/6WV2diExckesZAlAQuyyY7glVAStU9POk4Q0a2hVGq4gS08j
         UEHR6niska2mdlo5C4q3Ra8UqYSnrzUN8hEQz0yKgOqKP5IK0iU+fhd0hblOExkZN7so
         MnAg==
X-Forwarded-Encrypted: i=1; AJvYcCUk22mdq8/JgzseYTt9/mZLwsLIls7hzDLzy4pEadf5gczdUCyLP1F9ocgWVli3OauAwMuFv8IDmqHaQDFt++AlFu+jMthcJF4gjIbHjN4=
X-Gm-Message-State: AOJu0Yz9K/wjSc/s+g0OM4Zm2bLv10+j/Y+3rN8Pw+EhRDdlhDitt7U+
	+mG40n+Ye5M4lbn/XNCE+Rjf2U6Oip/C50CChbOdpK9qon3DMWYIr+8MBOokBPyZW5Bu4/xjAbW
	oI3t7EZY0E0P+f/MN007JKZ8V+8Z1WooHnq5H
X-Google-Smtp-Source: AGHT+IGIGFru+LOx4cY9EsrZp/X/+zrxiy5UoCJnZGTW/H4TVQQOuIByLlX2TxCmmFQ9x8W3Bkc7Lsm3wP/ljInKJtk=
X-Received: by 2002:a25:e303:0:b0:de6:327:fa2 with SMTP id 3f1490d57ef6-debb9d6cdbcmr404346276.8.1715104847273;
 Tue, 07 May 2024 11:00:47 -0700 (PDT)
MIME-Version: 1.0
References: <4fedd80c-d5b6-4478-bfd3-02d1ee1a26e5@vivo.com>
 <aab5ec51-fcff-44f2-a4f5-2979bd776a03@amd.com> <2ebca2fd-9465-4e64-b3cc-ffb88ef87800@vivo.com>
 <d4209754-5f26-422d-aca0-45cccbc44ad0@amd.com> <289b9ad6-58a3-aa39-48ae-a244fe108354@quicinc.com>
 <CABdmKX3Zu8LihAFjMuUHx4xzZoqgmY7OKdyVz-D26gM-LECn6A@mail.gmail.com>
 <8ca45837-cbed-28da-4a6f-0dcec8294f51@quicinc.com> <83605228-92ee-b666-d894-1c145af2e5ab@quicinc.com>
 <CABdmKX2MWU9-9YN46PXx-Jy-O9CHMv8hCkvArd7BbWUBs=GPnw@mail.gmail.com>
 <8915fcc1-d8f1-48c2-9e51-65159aaa5a3b@amd.com> <ZjovD5WaWjknd-qv@phenom.ffwll.local>
 <44b08793-cf44-4cbd-a3bb-583af351ab9e@amd.com>
In-Reply-To: <44b08793-cf44-4cbd-a3bb-583af351ab9e@amd.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 7 May 2024 11:00:35 -0700
Message-ID: <CABdmKX3SpOk4BQU6i31r8jHc1f-o8sz7rXgtRyhTQZ4GJYHH=Q@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 07A443F02C
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.176:from];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[209.85.219.176:from];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: SHQ2EEMKI7526ZRPH43VDK4FXJBPSCHV
X-Message-ID-Hash: SHQ2EEMKI7526ZRPH43VDK4FXJBPSCHV
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Charan Teja Kalla <quic_charante@quicinc.com>, zhiguojiang <justinjiang@vivo.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, opensource.kernel@vivo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dmabuf: fix dmabuf file poll uaf issue
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SHQ2EEMKI7526ZRPH43VDK4FXJBPSCHV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBNYXkgNywgMjAyNCBhdCA3OjA04oCvQU0gQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4gQW0gMDcuMDUuMjQgdW0gMTU6Mzkgc2No
cmllYiBEYW5pZWwgVmV0dGVyOg0KPiA+IE9uIFR1ZSwgTWF5IDA3LCAyMDI0IGF0IDEyOjEwOjA3
UE0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+ID4+IEFtIDA2LjA1LjI0IHVtIDIx
OjA0IHNjaHJpZWIgVC5KLiBNZXJjaWVyOg0KPiA+Pj4gT24gTW9uLCBNYXkgNiwgMjAyNCBhdCAy
OjMw4oCvQU0gQ2hhcmFuIFRlamEgS2FsbGENCj4gPj4+IDxxdWljX2NoYXJhbnRlQHF1aWNpbmMu
Y29tPiB3cm90ZToNCj4gPj4+PiBIaSBUSiwNCj4gPj4+Pg0KPiA+Pj4+IFNlZW1zIEkgaGF2ZSBn
b3QgYW5zd2VycyBmcm9tIFsxXSwgd2hlcmUgaXQgaXMgYWdyZWVkIHVwb24gZXBvbGwoKSBpcw0K
PiA+Pj4+IHRoZSBzb3VyY2Ugb2YgaXNzdWUuDQo+ID4+Pj4NCj4gPj4+PiBUaGFua3MgYSBsb3Qg
Zm9yIHRoZSBkaXNjdXNzaW9uLg0KPiA+Pj4+DQo+ID4+Pj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2xrbWwvMDAwMDAwMDAwMDAwMmQ2MzFmMDYxNTkxOGYxZUBnb29nbGUuY29tLw0KPiA+
Pj4+DQo+ID4+Pj4gVGhhbmtzDQo+ID4+Pj4gQ2hhcmFuDQo+ID4+PiBPaCBtYW4sIHF1aXRlIGEg
c2V0IG9mIHRocmVhZHMgb24gdGhpcyBvdmVyIHRoZSB3ZWVrZW5kLiBUaGFua3MgZm9yIHRoZSBs
aW5rLg0KPiA+PiBZZWFoIGFuZCBpdCBhbHNvIGhhcyBzb21lIGludGVyZXN0aW5nIHNpZGUgY29u
Y2x1c2lvbjogV2Ugc2hvdWxkIHByb2JhYmx5DQo+ID4+IHRlbGwgcGVvcGxlIHRvIHN0b3AgdXNp
bmcgRE1BLWJ1ZiB3aXRoIGVwb2xsLg0KPiA+Pg0KPiA+PiBUaGUgYmFja2dyb3VuZCBpcyB0aGF0
IHRoZSBtdXRleCBhcHByb2FjaCBlcG9sbCB1c2VzIHRvIG1ha2UgZmlsZXMgZGlzYXBwZWFyDQo+
ID4+IGZyb20gdGhlIGludGVyZXN0IGxpc3Qgb24gY2xvc2UgcmVzdWx0cyBpbiB0aGUgZmFjdCB0
aGF0IGVhY2ggZmlsZSBjYW4gb25seQ0KPiA+PiBiZSBwYXJ0IG9mIGEgc2luZ2xlIGVwb2xsIGF0
IGEgdGltZS4NCj4gPj4NCj4gPj4gTm93IHNpbmNlIERNQS1idWYgaXMgYnVpbGQgYXJvdW5kIHRo
ZSBpZGVhIHRoYXQgd2Ugc2hhcmUgdGhlIGJ1ZmZlcg0KPiA+PiByZXByZXNlbnRhdGlvbiBhcyBm
aWxlIGJldHdlZW4gcHJvY2Vzc2VzIGl0IG1lYW5zIHRoYXQgb25seSBvbmUgcHJvY2VzcyBhdCBh
DQo+ID4+IHRpbWUgY2FuIHVzZSBlcG9sbCB3aXRoIGVhY2ggRE1BLWJ1Zi4NCj4gPj4NCj4gPj4g
U28gZm9yIGV4YW1wbGUgaWYgYSB3aW5kb3cgbWFuYWdlciB1c2VzIGVwb2xsIGV2ZXJ5dGhpbmcg
aXMgZmluZS4gSWYgYQ0KPiA+PiBjbGllbnQgaXMgdXNpbmcgZXBvbGwgZXZlcnl0aGluZyBpcyBm
aW5lIGFzIHdlbGwuIEJ1dCBpZiAqYm90aCogdXNlIGVwb2xsIGF0DQo+ID4+IHRoZSBzYW1lIHRp
bWUgaXQgd29uJ3Qgd29yay4NCj4gPj4NCj4gPj4gVGhpcyBjYW4gbGVhZCB0byByYXRoZXIgZnVu
bnkgYW5kIGhhcmQgdG8gZGVidWcgY29tYmluYXRpb25zIG9mIGZhaWx1cmVzIGFuZA0KPiA+PiBJ
IHRoaW5rIHdlIG5lZWQgdG8gZG9jdW1lbnQgdGhpcyBsaW1pdGF0aW9uIGFuZCBleHBsaWNpdGx5
IHBvaW50IGl0IG91dC4NCj4gPiBPaywgSSB0ZXN0ZWQgdGhpcyB3aXRoIGEgc21hbGwgQyBwcm9n
cmFtLCBhbmQgeW91J3JlIG1peGluZyB0aGluZ3MgdXAuDQo+ID4gSGVyZSdzIHdoYXQgSSBnb3QN
Cj4gPg0KPiA+IC0gWW91IGNhbm5vdCBhZGQgYSBmaWxlIHR3aWNlIHRvIHRoZSBzYW1lIGVwb2xs
IGZpbGUvZmQuIFNvIHRoYXQgcGFydCBpcw0KPiA+ICAgIGNvcnJlY3QsIGFuZCBhbHNvIG15IHVu
ZGVyc3RhbmRpbmcgZnJvbSByZWFkaW5nIHRoZSBrZXJuZWwgY29kZS4NCj4gPg0KPiA+IC0gWW91
IGNhbiBhZGQgdGhlIHNhbWUgZmlsZSB0byB0d28gZGlmZmVyZW50IGVwb2xsIGZpbGUgaW5zdGFj
ZXMuIFdoaWNoDQo+ID4gICAgbWVhbnMgaXQncyB0b3RhbGx5IGZpbmUgdG8gdXNlIGVwb2xsIG9u
IGEgZG1hX2J1ZiBpbiBkaWZmZXJlbnQgcHJvY2Vzc2VzDQo+ID4gICAgbGlrZSBib3RoIGluIHRo
ZSBjb21wb3NpdG9yIGFuZCBpbiBjbGllbnRzLg0KPg0KPiBBaCEgVGhhbiBJIG1pc3VuZGVyc3Rv
b2QgdGhhdCBjb21tZW50IGluIHRoZSBkaXNjdXNzaW9uLiBUaGFua3MgZm9yDQo+IGNsYXJpZnlp
bmcgdGhhdC4NCj4NCj4gPg0KPiA+IC0gU3Vic3RhbnRpYWxseSBtb3JlIGVudGVydGFpbmluZywg
eW91IGNhbiBuZXN0IGVwb2xsIGluc3RhbmNlcywgYW5kIGUuZy4NCj4gPiAgICBhZGQgYSAybmQg
ZXBvbGwgZmlsZSBhcyBhbiBldmVudCB0byB0aGUgZmlyc3Qgb25lLiBUaGF0IHdheSB5b3UgY2Fu
IGFkZA0KPiA+ICAgIHRoZSBzYW1lIGZpbGUgdG8gYm90aCBlcG9sbCBmZHMsIGFuZCBzbyBlbmQg
dXAgd2l0aCB0aGUgc2FtZSBmaWxlDQo+ID4gICAgZXNzZW50aWFsbHkgYmVpbmcgYWRkZWQgdHdp
Y2UgdG8gdGhlIHRvcC1sZXZlbCBlcG9sbCBmaWxlLiBTbyBldmVuDQo+ID4gICAgd2l0aGluIG9u
ZSBhcHBsaWNhdGlvbiB0aGVyZSdzIG5vIHJlYWwgaXNzdWUgd2hlbiBlLmcuIGRpZmZlcmVudA0K
PiA+ICAgIHVzZXJzcGFjZSBkcml2ZXJzIGFsbCB3YW50IHRvIHVzZSBlcG9sbCBvbiB0aGUgc2Ft
ZSBmZCwgYmVjYXVzZSB5b3UgY2FuDQo+ID4gICAganVzdCB0aHJvdyBpbiBhbm90aGVyIGxldmVs
IG9mIGVwb2xsIGFuZCBpdCdzIGZpbmUgYWdhaW4gYW5kIHlvdSB3b24ndA0KPiA+ICAgIGdldCBh
biBFRVhJU1RTIG9uIEVQT0xMX0NUTF9BREQuDQo+ID4NCj4gPiAgICBCdXQgSSBhbHNvIGRvbid0
IHRoaW5rIHdlIGhhdmUgdGhpcyBpc3N1ZSByaWdodCBub3cgYW55d2hlcmUsIHNpbmNlIGl0J3MN
Cj4gPiAgICBraW5kYSBhIGdlbmVyYWwgZXBvbGwgaXNzdWUgdGhhdCBoYXBwZW5zIHdpdGggYW55
IGR1cGxpY2F0ZWQgZmlsZS4NCj4NCj4gSSBhY3R1YWxseSBoYXZlIGJlZW4gdGVsbGluZyBwZW9w
bGUgdG8gKGFiKXVzZSB0aGUgZXBvbGwgYmVoYXZpb3IgdG8NCj4gY2hlY2sgaWYgdHdvIGZpbGUg
ZGVzY3JpcHRvcnMgcG9pbnQgdG8gdGhlIHNhbWUgdW5kZXJseWluZyBmaWxlIHdoZW4NCj4gS0NN
UCBpc24ndCBhdmFpbGFibGUuDQo+DQo+IFNvbWUgZW52aXJvbm1lbnRzIChBbmRyb2lkPykgZGlz
YWJsZSBLQ01QIGJlY2F1c2UgdGhleSBzZWUgaXQgYXMNCj4gc2VjdXJpdHkgcHJvYmxlbS4NCj4N
CkRpZG4ndCBrbm93IGFib3V0IHRoaXMgc28gSSBjaGVja2VkLiBPdXIga2VybmVsIGhhcyBDT05G
SUdfS0NNUCwgYnV0DQpzZWNjb21wIGRvZXMgbG9vayBsaWtlIGl0J3MgYmxvY2tpbmcga2NtcCBm
b3IgYXBwcy4NCmh0dHBzOi8vY3MuYW5kcm9pZC5jb20vYW5kcm9pZC9wbGF0Zm9ybS9zdXBlcnBy
b2plY3QvbWFpbi8rL21haW46YmlvbmljL2xpYmMvU1lTQ0FMTFMuVFhUDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
