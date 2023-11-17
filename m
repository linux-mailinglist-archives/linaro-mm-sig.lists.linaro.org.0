Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FE67EF78D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Nov 2023 19:50:51 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5D11241205
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Nov 2023 18:50:50 +0000 (UTC)
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	by lists.linaro.org (Postfix) with ESMTPS id 5946D40D3D
	for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Nov 2023 18:50:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=QnUIVDNu;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.219.173 as permitted sender) smtp.mailfrom=tjmercier@google.com
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-da819902678so2235802276.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Nov 2023 10:50:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1700247034; x=1700851834; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DtpYAOIzka1JBZk8iAppwwSnkzFLFfJkyz+jdr3nWyE=;
        b=QnUIVDNu0iEI5/4Y9/yCMh37yuHzprbv/0+gEhsfURR2HZaKmCEHP9B/FSViDA2UVR
         G5D6zhCK9VsEUQGF3qIuHhZ5/VDx3MBSZWZp4v8E93oPcpKb5z1BZuBhGyQkTTMYx1LC
         aWjBKD0SxzU8IiVC1bDi8FB77lzMIgQDL6wCjcUK/Xw6scft+PuVzpHA48bQeExtHsQu
         WgpAEnWPF6KFHnTnStG34Qi8X8DwR0O7iOjkx+PSqfLx8G2qTVMoc1462xllXwgQD0nQ
         vqUXykQPyw2XqKjCilW4iSX6IN096gIzNj9waEy9wxZSH0Qcmn444TGMON6+fdd1mfrw
         IxcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700247034; x=1700851834;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DtpYAOIzka1JBZk8iAppwwSnkzFLFfJkyz+jdr3nWyE=;
        b=ehrnINjyVUDNcrtriUy7JcurIl1eCFm/2+ZJJv8rI/AZHloKp6zY9aofTrR+XyN1cs
         gQeD0GdSkjKV2P/F+zNmJAlUM0ikxygAetdNWBdbfvfTicYb4ig1fnV1P6UgOu5fSP/m
         31R/jJamxe+0NDui2rGN60LDa8qUcdtVmB62SD/O4R1jRe0GbTaM11CwSRK2woVCcoEi
         WVzeoAHqrxZdXQ2wtn+vksFdZvmUdqsJS+fSRQuB+Wt/nRG5jeMLY1CMVs0plonoLbD6
         SNvJBgDRfSnInPbR3s0pS16GMNDSnVeH1wKKDeVUpyi7XPQHrR5W5oCIoSOlccNOikgO
         n0ow==
X-Gm-Message-State: AOJu0YwJpakViu8DKHmPNKOy4Udi+zU93IDTyFr0vQ17B1X/NG9xUJ1u
	NaaNJd68Fu0nNQXCCGD8dFpcf1EIYVPY4JE11ag8Og==
X-Google-Smtp-Source: AGHT+IFi5dwlJjXKeALdkQ3r7NL6Ns0Vqtg+0GbT2TnyYHl6vrk7ylgtgCrw4Xy73kvNJHON7kCIdI2uoaIh9nEMUls=
X-Received: by 2002:a05:6902:1508:b0:d91:c3fe:6144 with SMTP id
 q8-20020a056902150800b00d91c3fe6144mr286813ybu.3.1700247033764; Fri, 17 Nov
 2023 10:50:33 -0800 (PST)
MIME-Version: 1.0
References: <20231116191409.work.634-kees@kernel.org>
In-Reply-To: <20231116191409.work.634-kees@kernel.org>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Fri, 17 Nov 2023 10:50:21 -0800
Message-ID: <CABdmKX1oNw+quAd+ALcgGoz-PPsvy=O6YM4f2_SmP+dQBddzAA@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5946D40D3D
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.173:from];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,vger.kernel.org,lists.freedesktop.org,gmail.com,lists.linaro.org,amd.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: Z72BBLMQKQGM3H5BRLIFGYNCYBODQFZ4
X-Message-ID-Hash: Z72BBLMQKQGM3H5BRLIFGYNCYBODQFZ4
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Azeem Shaikh <azeemshaikh38@gmail.com>, linaro-mm-sig@lists.linaro.org, linux-hardening@vger.kernel.org, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Replace strlcpy() with strscpy()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Z72BBLMQKQGM3H5BRLIFGYNCYBODQFZ4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBOb3YgMTYsIDIwMjMgYXQgMTE6MTTigK9BTSBLZWVzIENvb2sgPGtlZXNjb29rQGNo
cm9taXVtLm9yZz4gd3JvdGU6DQo+DQo+IHN0cmxjcHkoKSByZWFkcyB0aGUgZW50aXJlIHNvdXJj
ZSBidWZmZXIgZmlyc3QuIFRoaXMgcmVhZCBtYXkgZXhjZWVkDQo+IHRoZSBkZXN0aW5hdGlvbiBz
aXplIGxpbWl0LiBUaGlzIGlzIGJvdGggaW5lZmZpY2llbnQgYW5kIGNhbiBsZWFkDQo+IHRvIGxp
bmVhciByZWFkIG92ZXJmbG93cyBpZiBhIHNvdXJjZSBzdHJpbmcgaXMgbm90IE5VTC10ZXJtaW5h
dGVkWzFdLg0KPiBBZGRpdGlvbmFsbHksIGl0IHJldHVybnMgdGhlIHNpemUgb2YgdGhlIHNvdXJj
ZSBzdHJpbmcsIG5vdCB0aGUNCj4gcmVzdWx0aW5nIHNpemUgb2YgdGhlIGRlc3RpbmF0aW9uIHN0
cmluZy4gSW4gYW4gZWZmb3J0IHRvIHJlbW92ZSBzdHJsY3B5KCkNCj4gY29tcGxldGVseVsyXSwg
cmVwbGFjZSBzdHJsY3B5KCkgaGVyZSB3aXRoIHN0cnNjcHkoKS4NCj4NCj4gTGluazogaHR0cHM6
Ly93d3cua2VybmVsLm9yZy9kb2MvaHRtbC9sYXRlc3QvcHJvY2Vzcy9kZXByZWNhdGVkLmh0bWwj
c3RybGNweSBbMV0NCj4gTGluazogaHR0cHM6Ly9naXRodWIuY29tL0tTUFAvbGludXgvaXNzdWVz
Lzg5IFsyXQ0KPiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4NCj4g
Q2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiBDYzog
QXplZW0gU2hhaWtoIDxhemVlbXNoYWlraDM4QGdtYWlsLmNvbT4NCj4gQ2M6IGxpbnV4LW1lZGlh
QHZnZXIua2VybmVsLm9yZw0KPiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
PiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQo+IFNpZ25lZC1vZmYtYnk6IEtl
ZXMgQ29vayA8a2Vlc2Nvb2tAY2hyb21pdW0ub3JnPg0KDQpSZXZpZXdlZC1ieTogVC5KLiBNZXJj
aWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4NCg0Kc3Ryc2NweSByZXR1cm5zIC1FMkJJRyB3aGVu
IGl0IHRydW5jYXRlcyAvIGZvcmNlIG51bGwtdGVybWluYXRlcyB3aGljaA0Kd291bGQgcHJvdmlk
ZSB0aGUgd3JvbmcgYXJndW1lbnQgZm9yIGR5bmFtaWNfZG5hbWUsIGJ1dA0KZG1hX2J1Zl9zZXRf
bmFtZXtfdXNlcn0gbWFrZXMgc3VyZSB3ZSBoYXZlIGEgbnVsbC10ZXJtaW5hdGVkIHN0cmluZyBv
Zg0KdGhlIGFwcHJvcHJpYXRlIG1heGltdW0gc2l6ZSBpbiBkbWFidWYtPm5hbWUuDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
