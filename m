Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C52A09322DF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jul 2024 11:32:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3D63B442FA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jul 2024 09:32:01 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	by lists.linaro.org (Postfix) with ESMTPS id 84C2B3F346
	for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jul 2024 09:31:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=f3PaP+Dh;
	spf=none (lists.linaro.org: domain of daniel.vetter@ffwll.ch has no SPF policy when checking 209.85.221.52) smtp.mailfrom=daniel.vetter@ffwll.ch;
	dmarc=none
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3679eef8cbbso138456f8f.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jul 2024 02:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1721122316; x=1721727116; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bmqE+tUBq0/SZnmu4rbe4uibdP78BlfSNiZLCEbAiTQ=;
        b=f3PaP+DhZtBIqXEZAoenKKgr/eBiygRx/SaL6XYEIvMpt7QJkEgKxrNfonaifL4PM0
         //7EzX5qsd5ykKnVeeQi1nOR4ZlbZsJ3boAut7AhbY6fqgOcQtE5zgg1zA9w+ANCl9Uf
         fHFOU+lcyc2Bvc28HWb0hlzfiuxAKfLiDLtvc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721122316; x=1721727116;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bmqE+tUBq0/SZnmu4rbe4uibdP78BlfSNiZLCEbAiTQ=;
        b=MAyDpKK0+XZoYbVqI++ymiOk73U9goHcQdPZcc2CYdVDal0mV/Ur+ROKHD8zcgXN+W
         B8LscCEDsMuf5eia/ZSse5kpDeTh0pTQwGc2KH1dwMI7/A/8HBisnb5aUvHEh80eQ8jU
         a2meioiGwfpJ7m3k9zaBZkwjoRb6Ta30axhQZrOZtaOglWXaU47O642Mrv/k4c6BdYX2
         t5lxEfcRwNo7MQ1HD+lHONwAjnHSPqpzhxAr1WggbSH6ufohSUXNvLuDk0u/ERGWkggr
         GEID9jZkw0z/2z82iVRhEf8+vyb+ichB6B+u5DQyM7+gR8OjDlS/hke3dHniYyidhZ3X
         mKRQ==
X-Forwarded-Encrypted: i=1; AJvYcCXWST4Hzlc1gRVLntB0YXpG9RsJueqzPbQqaqcB12oWtYg9uKXAOn1mATXm5Z9YO4dcivAvosT35jMh2yCwrfDEr/gOBygLLd8yc9skuZ0=
X-Gm-Message-State: AOJu0YwpJ1rYS/y1qkzBESJqVJsvhyH0cktx0xsWd7wPwLlDaIavsyJz
	cTDT14xtV85J8HDw2uXzwDPm6DvKyoYfPTrWj6mKaTk847zPp5W0r2uQ8Kt4Jys=
X-Google-Smtp-Source: AGHT+IH/pdOxEOwXcwiFkFydr3Ad0jnhs/61yWLi82ofglrUoK4E94kyYC5hYQMjmbMfPaS16eQmsw==
X-Received: by 2002:a05:600c:4f89:b0:424:ac9f:5c61 with SMTP id 5b1f17b1804b1-427b88d2cd5mr9618625e9.3.1721122316383;
        Tue, 16 Jul 2024 02:31:56 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3680db038dbsm8356168f8f.95.2024.07.16.02.31.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jul 2024 02:31:55 -0700 (PDT)
Date: Tue, 16 Jul 2024 11:31:53 +0200
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Huan Yang <link@vivo.com>
Message-ID: <ZpY-CfcDdEhzWpxN@phenom.ffwll.local>
Mail-Followup-To: Huan Yang <link@vivo.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	"T.J. Mercier" <tjmercier@google.com>, linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	linux-kernel@vger.kernel.org, opensource.kernel@vivo.com
References: <20240711074221.459589-1-link@vivo.com>
 <20240711074221.459589-2-link@vivo.com>
 <5ccbe705-883c-4651-9e66-6b452c414c74@amd.com>
 <ZpTnzkdolpEwFbtu@phenom.ffwll.local>
 <99364176-a7f0-4a17-8889-75ff92d5694e@amd.com>
 <06713006-c5ce-4773-a1b3-ca3bea56ee45@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <06713006-c5ce-4773-a1b3-ca3bea56ee45@vivo.com>
X-Operating-System: Linux phenom 6.9.7-amd64 
X-Rspamd-Queue-Id: 84C2B3F346
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.30 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.52:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	URIBL_BLOCKED(0.00)[ffwll.ch:url,ffwll.ch:dkim];
	DMARC_NA(0.00)[ffwll.ch];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: PA77EJ63N32HZ7QDO7DNJPOYHFJ7JYNA
X-Message-ID-Hash: PA77EJ63N32HZ7QDO7DNJPOYHFJ7JYNA
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, opensource.kernel@vivo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/2] dma-buf: heaps: DMA_HEAP_IOCTL_ALLOC_READ_FILE framework
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PA77EJ63N32HZ7QDO7DNJPOYHFJ7JYNA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBKdWwgMTYsIDIwMjQgYXQgMTA6NDg6NDBBTSArMDgwMCwgSHVhbiBZYW5nIHdyb3Rl
Og0KPiBJIGp1c3QgcmVzZWFyY2ggdGhlIHVkbWFidWYsIFBsZWFzZSBjb3JyZWN0IG1lIGlmIEkn
bSB3cm9uZy4NCj4gDQo+IOWcqCAyMDI0LzcvMTUgMjA6MzIsIENocmlzdGlhbiBLw7ZuaWcg5YaZ
6YGTOg0KPiA+IEFtIDE1LjA3LjI0IHVtIDExOjExIHNjaHJpZWIgRGFuaWVsIFZldHRlcjoNCj4g
PiA+IE9uIFRodSwgSnVsIDExLCAyMDI0IGF0IDExOjAwOjAyQU0gKzAyMDAsIENocmlzdGlhbiBL
w7ZuaWcgd3JvdGU6DQo+ID4gPiA+IEFtIDExLjA3LjI0IHVtIDA5OjQyIHNjaHJpZWIgSHVhbiBZ
YW5nOg0KPiA+ID4gPiA+IFNvbWUgdXNlciBtYXkgbmVlZCBsb2FkIGZpbGUgaW50byBkbWEtYnVm
LCBjdXJyZW50DQo+ID4gPiA+ID4gd2F5IGlzOg0KPiA+ID4gPiA+IMKgwqDCoCAxLiBhbGxvY2F0
ZSBhIGRtYS1idWYsIGdldCBkbWEtYnVmIGZkDQo+ID4gPiA+ID4gwqDCoMKgIDIuIG1tYXAgZG1h
LWJ1ZiBmZCBpbnRvIHZhZGRyDQo+ID4gPiA+ID4gwqDCoMKgIDMuIHJlYWQoZmlsZV9mZCwgdmFk
ZHIsIGZzeikNCj4gPiA+ID4gPiBUaGlzIGlzIHRvbyBoZWF2eSBpZiBmc3ogcmVhY2hlZCB0byBH
Qi4NCj4gPiA+ID4gWW91IG5lZWQgdG8gZGVzY3JpYmUgYSBiaXQgbW9yZSB3aHkgdGhhdCBpcyB0
byBoZWF2eS4gSSBjYW4gb25seQ0KPiA+ID4gPiBhc3N1bWUgeW91DQo+ID4gPiA+IG5lZWQgdG8g
c2F2ZSBtZW1vcnkgYmFuZHdpZHRoIGFuZCBhdm9pZCB0aGUgZXh0cmEgY29weSB3aXRoIHRoZSBD
UFUuDQo+ID4gPiA+IA0KPiA+ID4gPiA+IFRoaXMgcGF0Y2ggaW1wbGVtZW50IGEgZmVhdHVyZSBj
YWxsZWQgRE1BX0hFQVBfSU9DVExfQUxMT0NfUkVBRF9GSUxFLg0KPiA+ID4gPiA+IFVzZXIgbmVl
ZCB0byBvZmZlciBhIGZpbGVfZmQgd2hpY2ggeW91IHdhbnQgdG8gbG9hZCBpbnRvDQo+ID4gPiA+
ID4gZG1hLWJ1ZiwgdGhlbiwNCj4gPiA+ID4gPiBpdCBwcm9taXNlIGlmIHlvdSBnb3QgYSBkbWEt
YnVmIGZkLCBpdCB3aWxsIGNvbnRhaW5zIHRoZSBmaWxlIGNvbnRlbnQuDQo+ID4gPiA+IEludGVy
ZXN0aW5nIGlkZWEsIHRoYXQgaGFzIGF0IGxlYXN0IG1vcmUgcG90ZW50aWFsIHRoYW4gdHJ5aW5n
DQo+ID4gPiA+IHRvIGVuYWJsZQ0KPiA+ID4gPiBkaXJlY3QgSS9PIG9uIG1tYXAoKWVkIERNQS1i
dWZzLg0KPiA+ID4gPiANCj4gPiA+ID4gVGhlIGFwcHJvYWNoIHdpdGggdGhlIG5ldyBJT0NUTCBt
aWdodCBub3Qgd29yayBiZWNhdXNlIGl0IGlzIGEgdmVyeQ0KPiA+ID4gPiBzcGVjaWFsaXplZCB1
c2UgY2FzZS4NCj4gPiA+ID4gDQo+ID4gPiA+IEJ1dCBJSVJDIHRoZXJlIHdhcyBhIGNvcHlfZmls
ZV9yYW5nZSBjYWxsYmFjayBpbiB0aGUgZmlsZV9vcGVyYXRpb25zDQo+ID4gPiA+IHN0cnVjdHVy
ZSB5b3UgY291bGQgdXNlIGZvciB0aGF0LiBJJ20ganVzdCBub3Qgc3VyZSB3aGVuIGFuZCBob3cN
Cj4gPiA+ID4gdGhhdCdzIHVzZWQNCj4gPiA+ID4gd2l0aCB0aGUgY29weV9maWxlX3JhbmdlKCkg
c3lzdGVtIGNhbGwuDQo+ID4gPiBJJ20gbm90IHN1cmUgYW55IG9mIHRob3NlIGhlbHAsIGJlY2F1
c2UgaW50ZXJuYWxseSB0aGV5J3JlIGFsbCBzdGlsbA0KPiA+ID4gYmFzZWQNCj4gPiA+IG9uIHN0
cnVjdCBwYWdlIChvciBtYXliZSBpbiB0aGUgZnV0dXJlIG9uIGZvbGlvcykuIEFuZCB0aGF0J3Mg
dGhlIHRoaW5nDQo+ID4gPiBkbWEtYnVmIGNhbid0IGdpdmUgeW91LCBhdCBsZWFzdCB3aXRob3V0
IHBlYWtpbmcgYmVoaW5kIHRoZSBjdXJ0YWluLg0KPiA+ID4gDQo+ID4gPiBJIHRoaW5rIGFuIGVu
dGlyZWx5IGRpZmZlcmVudCBvcHRpb24gd291bGQgYmUgbWFsbG9jK3VkbWFidWYuIFRoYXQNCj4g
PiA+IGVzc2VudGlhbGx5IGhhbmRsZXMgdGhlIGltcGVuZGVuY2UtbWlzbWF0Y2ggYmV0d2VlbiBk
aXJlY3QgSS9PIGFuZA0KPiA+ID4gZG1hLWJ1Zg0KPiA+ID4gb24gdGhlIGRtYS1idWYgc2lkZS4g
VGhlIGRvd25zaWRlIGlzIHRoYXQgaXQnbGwgbWFrZSB0aGUgcGVybWFuZW50bHkNCj4gPiA+IHBp
bm5lZCBtZW1vcnkgYWNjb3VudGluZyBhbmQgdHJhY2tpbmcgaXNzdWVzIGV2ZW4gbW9yZSBhcHBh
cmVudCwgYnV0IEkNCj4gPiA+IGd1ZXNzIGV2ZW50dWFsbHkgd2UgZG8gbmVlZCB0byBzb3J0IHRo
YXQgb25lIG91dC4NCj4gPiANCj4gPiBPaCwgdmVyeSBnb29kIGlkZWEhDQo+ID4gSnVzdCBvbmUg
bWlub3IgY29ycmVjdGlvbjogaXQncyBub3QgbWFsbG9jK3VkbWFidWYsIGJ1dCByYXRoZXINCj4g
PiBjcmVhdGVfbWVtZmQoKSt1ZG1hYnVmLg0KDQpIbSByaWdodCwgaXQncyBjcmVhdGVfbWVtZmQo
KSArIG1tYXAobWVtZmQpICsgdWRtYWJ1Zg0KDQo+ID4gQW5kIHlvdSBuZWVkIHRvIGNvbXBsZXRl
IHlvdXIgZGlyZWN0IEkvTyBiZWZvcmUgY3JlYXRpbmcgdGhlIHVkbWFidWYNCj4gPiBzaW5jZSB0
aGF0IHJlZmVyZW5jZSB3aWxsIHByZXZlbnQgZGlyZWN0IEkvTyBmcm9tIHdvcmtpbmcuDQo+IA0K
PiB1ZG1hYnVmIHdpbGwgcGluIGFsbCBwYWdlcywgc28sIGlmIHJldHVybmVkIGZkLCBjYW4ndCB0
cmlnZ2VyIGRpcmVjdCBJL08NCj4gKHNhbWUgYXMgZG1hYnVmKS4gU28sIG11c3QgY29tcGxldGUg
cmVhZCBiZWZvcmUgcGluIGl0Lg0KDQpXaHkgZG9lcyBwaW5uaW5nIHByZXZlbnQgZGlyZWN0IEkv
Tz8gSSBoYXZlbid0IHRlc3RlZCwgYnV0IEknZCBleHBlY3QgdGhlDQpyZG1hIGZvbGtzIHdvdWxk
IGJlIHJlYWxseSBhbm5veWVkIGlmIHRoYXQncyB0aGUgY2FzZSAuLi4NCg0KPiBCdXQgY3VycmVu
dCB3YXkgaXMgdXNlIGBtZW1mZF9waW5fZm9saW9zYCB0byBib29zdCBhbGxvYyBhbmQgcGluLCBz
byBtYXliZQ0KPiBuZWVkIHN1aXQgaXQuDQo+IA0KPiANCj4gSSBjdXJyZW50bHkgZG91YnQgdGhh
dCB0aGUgdWRtYWJ1ZiBzb2x1dGlvbiBpcyBzdWl0YWJsZSBmb3Igb3VyDQo+IGdpZ2FieXRlLWxl
dmVsIHJlYWQgb3BlcmF0aW9ucy4NCj4gDQo+IDEuIFRoZSBjdXJyZW50IG1tYXAgb3BlcmF0aW9u
IHVzZXMgZmF1bHRpbmcsIHNvIGZyZXF1ZW50IHBhZ2UgZmF1bHRzIHdpbGwgYmUNCj4gdHJpZ2dl
cmVkIGR1cmluZyByZWFkcywgcmVzdWx0aW5nIGluIGEgbG90IG9mIGNvbnRleHQgc3dpdGNoaW5n
IG92ZXJoZWFkLg0KPiANCj4gMi4gY3VycmVudCB1ZG1hYnVmIHNpemUgbGltaXQgaXMgNjRNQiwg
ZXZlbiBjYW4gY2hhbmdlLCBtYXliZSBub3QgZ29vZCB0bw0KPiB1c2UgaW4gbGFyZ2Ugc2l6ZT8N
Cg0KWWVhaCB0aGF0J3MganVzdCBhIGZpZ2xlYWYgc28gd2UgZG9uJ3QgaGF2ZSB0byBib3RoZXIg
YWJvdXQgdGhlIGFjY291bnRpbmcNCmlzc3VlLg0KDQo+IDMuIFRoZSBtaWdyYXRpb24gYW5kIGFk
YXB0YXRpb24gb2YgdGhlIGRyaXZlciBpcyBhbHNvIGEgY2hhbGxlbmdlLCBhbmQNCj4gY3VycmVu
dGx5LCB3ZSBhcmUgdW5hYmxlIHRvIGNvbnRyb2wgaXQuDQoNCldoeSBkb2VzIGEgdWRtYWJ1ZiBm
ZCBub3Qgd29yayBpbnN0ZWFkIG9mIGFueSBvdGhlciBkbWFidWYgZmQ/IFRoYXQNCnNob3VsZG4n
dCBtYXR0ZXIgZm9yIHRoZSBjb25zdW1pbmcgZHJpdmVyIC4uLg0KDQo+IFBlcmhhcHMgaW1wbGVt
ZW50aW5nIGBjb3B5X2ZpbGVfcmFuZ2VgIHdvdWxkIGJlIG1vcmUgc3VpdGFibGUgZm9yIHVzLg0K
DQpTZWUgbXkgb3RoZXIgbWFpbCwgZnVuZGFtZW50YWxseSB0aGVzZSBhbGwgcmVseSBvbiBzdHJ1
Y3QgcGFnZSBiZWluZw0KcHJlc2VudCwgYW5kIGRtYS1idWYgZG9lc24ndCBnaXZlIHlvdSB0aGF0
LiBXaGljaCBtZWFucyB5b3UgbmVlZCB0byBnbw0KYmVsb3cgdGhlIGRtYS1idWYgYWJzdHJhY3Rp
b24uIEFuZCB1ZG1hYnVmIGlzIHByZXR0eSBtdWNoIHRoZSB0aGluZyBmb3INCnRoYXQsIGJlY2F1
c2UgaXQgd3JhcHMgbm9ybWFsIHN0cnVjdCBwYWdlIG1lbW9yeSBpbnRvIGEgZG1hYnVmLg0KDQpB
bmQgY29weV9maWxlX3JhbmdlIG9uIHRoZSB1bmRlcmx5aW5nIG1lbWZkIG1pZ2h0IGFscmVhZHkg
d29yaywgSSBoYXZlbid0DQpjaGVja2VkIHRob3VnaC4NCg0KQ2hlZXJzLCBTaW1hDQotLSANCkRh
bmllbCBWZXR0ZXINClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbg0KaHR0cDov
L2Jsb2cuZmZ3bGwuY2gNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
