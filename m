Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F4B7D40E6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Oct 2023 22:28:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 14CC23F362
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Oct 2023 20:28:03 +0000 (UTC)
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	by lists.linaro.org (Postfix) with ESMTPS id DC7C23EFD2
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Oct 2023 20:27:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=YqsQRNeo;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of alexdeucher@gmail.com designates 209.85.160.44 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-1e9b6f39f9eso2800734fac.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Oct 2023 13:27:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698092865; x=1698697665; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FzLS/WAJVc8r/bI0YL02DSWgXAnqpt9XXdg9/gyyxpE=;
        b=YqsQRNeokd8vnnWOR6GojejKEX4XbC5uSAyeLokklC+SQEm9dE3eyF4m+NqGRTVkOv
         gLkf4qh2/O0fpclzqUGBDcCpfG9SbIKJjIIREPI/gIAcLpTrjnvWAgnQPFT/mu3nCaNg
         /WgsaXpUrw6+zVivDm6fBIUpMCmDrku12zc2rwnyVDnGmQsLJvNQE2tcEFbiuoczwSYu
         Up06Zayt8LIXYoqT6wNHf60S7EXE8JCQOcqVF2UUy6TBoygG9W/7Gx/6nOejwCkieOBn
         y9DzeRIkI+vmIIjb98nCqi0qb1nOAQ+SDwYXWpR9Ucn3+KC3YKbJhNwNcHZIlYP6OqZx
         mwMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698092865; x=1698697665;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FzLS/WAJVc8r/bI0YL02DSWgXAnqpt9XXdg9/gyyxpE=;
        b=EN7ZMnoIgAlAiBiIEadUijq/WXt0BSccBNTAGHpaF1lt0hXVWxx+2efXofuVjfGqYe
         q6tuoK4UV7C2f1NMVM/cimQH3F/6s0I4/dFRx3rZVs/J6d6Xw7kpT6UzOc34JfMVlDP0
         hT/VDKEp13k7bs7/atgH/gE+qaIM9sNd9Cw1Ir9FkueEsqVc0cJ3msAqadfhSHynXVbh
         yVSej0QVxbpIr0d93JMRMhm8cFleyW1av+c7hNMi6zcylVQQAJP036f1rma/a3XHA4Sl
         3eFcjg3ASxHUM2QfUVJLdElOmgx9XwY22qJdI3+yDO9kCFItKNpfX7B4qUogrBF4dv6Y
         y9iQ==
X-Gm-Message-State: AOJu0YyfznVpJH/X4XbHgIQOiPwp6UW5YWpqADv/DTThYPNiRUCUmjLz
	JZNutvs/PLGZRE3VG8uReqDmMl4+0a3v9UG0nmo=
X-Google-Smtp-Source: AGHT+IHiaH512GTb6BpPWBQh3ebnUVcsivT+MJIbGiUzbB0k13wDweg69MJc8eOVh+sM7y5tJsWCcpB2ViIaj0UUY9s=
X-Received: by 2002:a05:6870:13c5:b0:1dc:d8c6:39f with SMTP id
 5-20020a05687013c500b001dcd8c6039fmr10996105oat.14.1698092865253; Mon, 23 Oct
 2023 13:27:45 -0700 (PDT)
MIME-Version: 1.0
References: <4a687c592b0f1b04f4bbf684129f5ce02b2b6f7b@linux.dev>
In-Reply-To: <4a687c592b0f1b04f4bbf684129f5ce02b2b6f7b@linux.dev>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 23 Oct 2023 16:27:34 -0400
Message-ID: <CADnq5_P-fxbkGbzDAys+pob-mdDJOX0QZYVsVvS=7FyGZukjOQ@mail.gmail.com>
To: qu.huang@linux.dev
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DC7C23EFD2
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.160.44:from];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.986];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: 36W77LZGPEQPW6NQWHQKSNWQPSDDY3RF
X-Message-ID-Hash: 36W77LZGPEQPW6NQWHQKSNWQPSDDY3RF
X-MailFrom: alexdeucher@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: alexander.deucher@amd.com, tom.stdenis@amd.com, Praful.Swarnakar@amd.com, srinivasan.shanmugam@amd.com, suhui@nfschina.com, Xinhui.Pan@amd.com, Harish.Kasiviswanathan@amd.com, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, sumit.semwal@linaro.org, linaro-mm-sig@lists.linaro.org, le.ma@amd.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, victorchengchi.lu@amd.com, christian.koenig@amd.com, dan.carpenter@linaro.org, Hawking.Zhang@amd.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/amdgpu: Fix a null pointer access when the smc_rreg pointer is NULL
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/36W77LZGPEQPW6NQWHQKSNWQPSDDY3RF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXBwbGllZC4gIFRoYW5rcyENCg0KQWxleA0KDQpPbiBNb24sIE9jdCAyMywgMjAyMyBhdCA5OjA2
4oCvQU0gPHF1Lmh1YW5nQGxpbnV4LmRldj4gd3JvdGU6DQo+DQo+IEluIGNlcnRhaW4gdHlwZXMg
b2YgY2hpcHMsIHN1Y2ggYXMgVkVHQTIwLCByZWFkaW5nIHRoZSBhbWRncHVfcmVnc19zbWMgZmls
ZSBjb3VsZCByZXN1bHQgaW4gYW4gYWJub3JtYWwgbnVsbCBwb2ludGVyIGFjY2VzcyB3aGVuIHRo
ZSBzbWNfcnJlZyBwb2ludGVyIGlzIE5VTEwuIEJlbG93IGFyZSB0aGUgc3RlcHMgdG8gcmVwcm9k
dWNlIHRoaXMgaXNzdWUgYW5kIHRoZSBjb3JyZXNwb25kaW5nIGV4Y2VwdGlvbiBsb2c6DQo+DQo+
IDEuIE5hdmlnYXRlIHRvIHRoZSBkaXJlY3Rvcnk6IC9zeXMva2VybmVsL2RlYnVnL2RyaS8wDQo+
IDIuIEV4ZWN1dGUgY29tbWFuZDogY2F0IGFtZGdwdV9yZWdzX3NtYw0KPiAzLiBFeGNlcHRpb24g
TG9nOjoNCj4gWzQwMDUwMDcuNzAyNTU0XSBCVUc6IGtlcm5lbCBOVUxMIHBvaW50ZXIgZGVyZWZl
cmVuY2UsIGFkZHJlc3M6IDAwMDAwMDAwMDAwMDAwMDANCj4gWzQwMDUwMDcuNzAyNTYyXSAjUEY6
IHN1cGVydmlzb3IgaW5zdHJ1Y3Rpb24gZmV0Y2ggaW4ga2VybmVsIG1vZGUNCj4gWzQwMDUwMDcu
NzAyNTY3XSAjUEY6IGVycm9yX2NvZGUoMHgwMDEwKSAtIG5vdC1wcmVzZW50IHBhZ2UNCj4gWzQw
MDUwMDcuNzAyNTcwXSBQR0QgMCBQNEQgMA0KPiBbNDAwNTAwNy43MDI1NzZdIE9vcHM6IDAwMTAg
WyMxXSBTTVAgTk9QVEkNCj4gWzQwMDUwMDcuNzAyNTgxXSBDUFU6IDQgUElEOiA2MjU2MyBDb21t
OiBjYXQgVGFpbnRlZDogRyAgICAgICAgICAgT0UgICAgIDUuMTUuMC00My1nZW5lcmljICM0Ni1V
YnVudCAgICAgICB1DQo+IFs0MDA1MDA3LjcwMjU5MF0gUklQOiAwMDEwOjB4MA0KPiBbNDAwNTAw
Ny43MDI1OThdIENvZGU6IFVuYWJsZSB0byBhY2Nlc3Mgb3Bjb2RlIGJ5dGVzIGF0IFJJUCAweGZm
ZmZmZmZmZmZmZmZmZDYuDQo+IFs0MDA1MDA3LjcwMjYwMF0gUlNQOiAwMDE4OmZmZmZhODJiNDZk
MjdkYTAgRUZMQUdTOiAwMDAxMDIwNg0KPiBbNDAwNTAwNy43MDI2MDVdIFJBWDogMDAwMDAwMDAw
MDAwMDAwMCBSQlg6IDAwMDAwMDAwMDAwMDAwMDAgUkNYOiBmZmZmYTgyYjQ2ZDI3ZTY4DQo+IFs0
MDA1MDA3LjcwMjYwOV0gUkRYOiAwMDAwMDAwMDAwMDAwMDAxIFJTSTogMDAwMDAwMDAwMDAwMDAw
MCBSREk6IGZmZmY5OTQwNjU2ZTAwMDANCj4gWzQwMDUwMDcuNzAyNjEyXSBSQlA6IGZmZmZhODJi
NDZkMjdkZDggUjA4OiAwMDAwMDAwMDAwMDAwMDAwIFIwOTogZmZmZjk5NDA2MGMwNzk4MA0KPiBb
NDAwNTAwNy43MDI2MTVdIFIxMDogMDAwMDAwMDAwMDAyMDAwMCBSMTE6IDAwMDAwMDAwMDAwMDAw
MDAgUjEyOiAwMDAwN2Y1ZTA2NzUzMDAwDQo+IFs0MDA1MDA3LjcwMjYxOF0gUjEzOiBmZmZmOTk0
MDY1NmUwMDAwIFIxNDogZmZmZmE4MmI0NmQyN2U2OCBSMTU6IDAwMDA3ZjVlMDY3NTMwMDANCj4g
WzQwMDUwMDcuNzAyNjIyXSBGUzogIDAwMDA3ZjVlMDc1NWI3NDAoMDAwMCkgR1M6ZmZmZjk5NDc5
ZDMwMDAwMCgwMDAwKSBrbmxHUzowMDAwMDAwMDAwMDAwMDAwDQo+IFs0MDA1MDA3LjcwMjYyNl0g
Q1M6ICAwMDEwIERTOiAwMDAwIEVTOiAwMDAwIENSMDogMDAwMDAwMDA4MDA1MDAzMw0KPiBbNDAw
NTAwNy43MDI2MjldIENSMjogZmZmZmZmZmZmZmZmZmZkNiBDUjM6IDAwMDAwMDAzMjUzZmMwMDAg
Q1I0OiAwMDAwMDAwMDAwMzUwNmUwDQo+IFs0MDA1MDA3LjcwMjYzM10gQ2FsbCBUcmFjZToNCj4g
WzQwMDUwMDcuNzAyNjM2XSAgPFRBU0s+DQo+IFs0MDA1MDA3LjcwMjY0MF0gIGFtZGdwdV9kZWJ1
Z2ZzX3JlZ3Nfc21jX3JlYWQrMHhiMC8weDEyMCBbYW1kZ3B1XQ0KPiBbNDAwNTAwNy43MDMwMDJd
ICBmdWxsX3Byb3h5X3JlYWQrMHg1Yy8weDgwDQo+IFs0MDA1MDA3LjcwMzAxMV0gIHZmc19yZWFk
KzB4OWYvMHgxYTANCj4gWzQwMDUwMDcuNzAzMDE5XSAga3N5c19yZWFkKzB4NjcvMHhlMA0KPiBb
NDAwNTAwNy43MDMwMjNdICBfX3g2NF9zeXNfcmVhZCsweDE5LzB4MjANCj4gWzQwMDUwMDcuNzAz
MDI4XSAgZG9fc3lzY2FsbF82NCsweDVjLzB4YzANCj4gWzQwMDUwMDcuNzAzMDM0XSAgPyBkb191
c2VyX2FkZHJfZmF1bHQrMHgxZTMvMHg2NzANCj4gWzQwMDUwMDcuNzAzMDQwXSAgPyBleGl0X3Rv
X3VzZXJfbW9kZV9wcmVwYXJlKzB4MzcvMHhiMA0KPiBbNDAwNTAwNy43MDMwNDddICA/IGlycWVu
dHJ5X2V4aXRfdG9fdXNlcl9tb2RlKzB4OS8weDIwDQo+IFs0MDA1MDA3LjcwMzA1Ml0gID8gaXJx
ZW50cnlfZXhpdCsweDE5LzB4MzANCj4gWzQwMDUwMDcuNzAzMDU3XSAgPyBleGNfcGFnZV9mYXVs
dCsweDg5LzB4MTYwDQo+IFs0MDA1MDA3LjcwMzA2Ml0gID8gYXNtX2V4Y19wYWdlX2ZhdWx0KzB4
OC8weDMwDQo+IFs0MDA1MDA3LjcwMzA2OF0gIGVudHJ5X1NZU0NBTExfNjRfYWZ0ZXJfaHdmcmFt
ZSsweDQ0LzB4YWUNCj4gWzQwMDUwMDcuNzAzMDc1XSBSSVA6IDAwMzM6MHg3ZjVlMDc2NzI5OTIN
Cj4gWzQwMDUwMDcuNzAzMDc5XSBDb2RlOiBjMCBlOSBiMiBmZSBmZiBmZiA1MCA0OCA4ZCAzZCBm
YSBiMiAwYyAwMCBlOCBjNSAxZCAwMiAwMCAwZiAxZiA0NCAwMCAwMCBmMyAwZiAgICAgICAgMWUg
ZmEgNjQgOGIgMDQgMjUgMTggMDAgMDAgMDAgODUgYzAgNzUgMTAgMGYgMDUgPDQ4PiAzZCAwMCBm
MCBmZiBmZiA3NyA1NiBjMyAwZiAxZiA0NCAwMCAwMCA0OCA4MyBlICAgICAgIGMgMjggNDggODkg
NTQgMjQNCj4gWzQwMDUwMDcuNzAzMDgzXSBSU1A6IDAwMmI6MDAwMDdmZmUwMzA5Nzg5OCBFRkxB
R1M6IDAwMDAwMjQ2IE9SSUdfUkFYOiAwMDAwMDAwMDAwMDAwMDAwDQo+IFs0MDA1MDA3LjcwMzA4
OF0gUkFYOiBmZmZmZmZmZmZmZmZmZmRhIFJCWDogMDAwMDAwMDAwMDAyMDAwMCBSQ1g6IDAwMDA3
ZjVlMDc2NzI5OTINCj4gWzQwMDUwMDcuNzAzMDkxXSBSRFg6IDAwMDAwMDAwMDAwMjAwMDAgUlNJ
OiAwMDAwN2Y1ZTA2NzUzMDAwIFJESTogMDAwMDAwMDAwMDAwMDAwMw0KPiBbNDAwNTAwNy43MDMw
OTRdIFJCUDogMDAwMDdmNWUwNjc1MzAwMCBSMDg6IDAwMDA3ZjVlMDY3NTIwMTAgUjA5OiAwMDAw
N2Y1ZTA2NzUyMDEwDQo+IFs0MDA1MDA3LjcwMzA5Nl0gUjEwOiAwMDAwMDAwMDAwMDAwMDIyIFIx
MTogMDAwMDAwMDAwMDAwMDI0NiBSMTI6IDAwMDAwMDAwMDAwMjIwMDANCj4gWzQwMDUwMDcuNzAz
MDk5XSBSMTM6IDAwMDAwMDAwMDAwMDAwMDMgUjE0OiAwMDAwMDAwMDAwMDIwMDAwIFIxNTogMDAw
MDAwMDAwMDAyMDAwMA0KPiBbNDAwNTAwNy43MDMxMDVdICA8L1RBU0s+DQo+IFs0MDA1MDA3Ljcw
MzEwN10gTW9kdWxlcyBsaW5rZWQgaW46IG5mX3RhYmxlcyBsaWJjcmMzMmMgbmZuZXRsaW5rIGFs
Z2lmX2hhc2ggYWZfYWxnIGJpbmZtdF9taXNjIG5sc18gICAgICAgaXNvODg1OV8xIGlwbWlfc3Np
ZiBhc3QgaW50ZWxfcmFwbF9tc3IgaW50ZWxfcmFwbF9jb21tb24gZHJtX3ZyYW1faGVscGVyIGRy
bV90dG1faGVscGVyIGFtZDY0X2VkYWMgdCAgICAgICB0bSBlZGFjX21jZV9hbWQga3ZtX2FtZCBj
Y3AgbWFjX2hpZCBrMTB0ZW1wIGt2bSBhY3BpX2lwbWkgaXBtaV9zaSByYXBsIHNjaF9mcV9jb2Rl
bCBpcG1pX2RldmludGYgaXBtICAgICAgIGlfbXNnaGFuZGxlciBtc3IgcGFycG9ydF9wYyBwcGRl
diBscCBwYXJwb3J0IG10ZCBwc3RvcmVfYmxrIGVmaV9wc3RvcmUgcmFtb29wcyBwc3RvcmVfem9u
ZSByZWVkX3NvbG8gICAgICAgbW9uIGlwX3RhYmxlcyB4X3RhYmxlcyBhdXRvZnM0IGliX3V2ZXJi
cyBpYl9jb3JlIGFtZGdwdShPRSkgYW1kZHJtX3R0bV9oZWxwZXIoT0UpIGFtZHR0bShPRSkgaW9t
bXVfdiAgICAgICAyIGFtZF9zY2hlZChPRSkgYW1ka2NsKE9FKSBkcm1fa21zX2hlbHBlciBzeXNj
b3B5YXJlYSBzeXNmaWxscmVjdCBzeXNpbWdibHQgZmJfc3lzX2ZvcHMgY2VjIHJjX2NvcmUgICAg
ICAgIGRybSBpZ2IgYWhjaSB4aGNpX3BjaSBsaWJhaGNpIGkyY19waWl4NCBpMmNfYWxnb19iaXQg
eGhjaV9wY2lfcmVuZXNhcyBkY2ENCj4gWzQwMDUwMDcuNzAzMTg0XSBDUjI6IDAwMDAwMDAwMDAw
MDAwMDANCj4gWzQwMDUwMDcuNzAzMTg4XSAtLS1bIGVuZCB0cmFjZSBhYzY1YTUzOGQyNDBkYTM5
IF0tLS0NCj4gWzQwMDUwMDcuODAwODY1XSBSSVA6IDAwMTA6MHgwDQo+IFs0MDA1MDA3LjgwMDg3
MV0gQ29kZTogVW5hYmxlIHRvIGFjY2VzcyBvcGNvZGUgYnl0ZXMgYXQgUklQIDB4ZmZmZmZmZmZm
ZmZmZmZkNi4NCj4gWzQwMDUwMDcuODAwODc0XSBSU1A6IDAwMTg6ZmZmZmE4MmI0NmQyN2RhMCBF
RkxBR1M6IDAwMDEwMjA2DQo+IFs0MDA1MDA3LjgwMDg3OF0gUkFYOiAwMDAwMDAwMDAwMDAwMDAw
IFJCWDogMDAwMDAwMDAwMDAwMDAwMCBSQ1g6IGZmZmZhODJiNDZkMjdlNjgNCj4gWzQwMDUwMDcu
ODAwODgxXSBSRFg6IDAwMDAwMDAwMDAwMDAwMDEgUlNJOiAwMDAwMDAwMDAwMDAwMDAwIFJESTog
ZmZmZjk5NDA2NTZlMDAwMA0KPiBbNDAwNTAwNy44MDA4ODNdIFJCUDogZmZmZmE4MmI0NmQyN2Rk
OCBSMDg6IDAwMDAwMDAwMDAwMDAwMDAgUjA5OiBmZmZmOTk0MDYwYzA3OTgwDQo+IFs0MDA1MDA3
LjgwMDg4Nl0gUjEwOiAwMDAwMDAwMDAwMDIwMDAwIFIxMTogMDAwMDAwMDAwMDAwMDAwMCBSMTI6
IDAwMDA3ZjVlMDY3NTMwMDANCj4gWzQwMDUwMDcuODAwODg4XSBSMTM6IGZmZmY5OTQwNjU2ZTAw
MDAgUjE0OiBmZmZmYTgyYjQ2ZDI3ZTY4IFIxNTogMDAwMDdmNWUwNjc1MzAwMA0KPiBbNDAwNTAw
Ny44MDA4OTFdIEZTOiAgMDAwMDdmNWUwNzU1Yjc0MCgwMDAwKSBHUzpmZmZmOTk0NzlkMzAwMDAw
KDAwMDApIGtubEdTOjAwMDAwMDAwMDAwMDAwMDANCj4gWzQwMDUwMDcuODAwODk1XSBDUzogIDAw
MTAgRFM6IDAwMDAgRVM6IDAwMDAgQ1IwOiAwMDAwMDAwMDgwMDUwMDMzDQo+IFs0MDA1MDA3Ljgw
MDg5OF0gQ1IyOiBmZmZmZmZmZmZmZmZmZmQ2IENSMzogMDAwMDAwMDMyNTNmYzAwMCBDUjQ6IDAw
MDAwMDAwMDAzNTA2ZTANCj4NCj4gU2lnbmVkLW9mZi1ieTogUXUgSHVhbmcgPHF1Lmh1YW5nQGxp
bnV4LmRldj4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGVi
dWdmcy5jIHwgNiArKysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykNCj4N
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZWJ1Z2Zz
LmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGVidWdmcy5jDQo+IGluZGV4
IGE0ZmFlYTQuLjA1NDA1ZGEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV9kZWJ1Z2ZzLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X2RlYnVnZnMuYw0KPiBAQCAtNzQ4LDYgKzc0OCw5IEBAIHN0YXRpYyBzc2l6ZV90IGFt
ZGdwdV9kZWJ1Z2ZzX3JlZ3Nfc21jX3JlYWQoc3RydWN0IGZpbGUgKmYsIGNoYXIgX191c2VyICpi
dWYsDQo+ICAgICAgICAgc3NpemVfdCByZXN1bHQgPSAwOw0KPiAgICAgICAgIGludCByOw0KPg0K
PiArICAgICAgIGlmICghYWRldi0+c21jX3JyZWcpDQo+ICsgICAgICAgICAgICAgICByZXR1cm4g
LUVQRVJNOw0KPiArDQo+ICAgICAgICAgaWYgKHNpemUgJiAweDMgfHwgKnBvcyAmIDB4MykNCj4g
ICAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPg0KPiBAQCAtODA0LDYgKzgwNyw5IEBA
IHN0YXRpYyBzc2l6ZV90IGFtZGdwdV9kZWJ1Z2ZzX3JlZ3Nfc21jX3dyaXRlKHN0cnVjdCBmaWxl
ICpmLCBjb25zdCBjaGFyIF9fdXNlciAqDQo+ICAgICAgICAgc3NpemVfdCByZXN1bHQgPSAwOw0K
PiAgICAgICAgIGludCByOw0KPg0KPiArICAgICAgIGlmICghYWRldi0+c21jX3dyZWcpDQo+ICsg
ICAgICAgICAgICAgICByZXR1cm4gLUVQRVJNOw0KPiArDQo+ICAgICAgICAgaWYgKHNpemUgJiAw
eDMgfHwgKnBvcyAmIDB4MykNCj4gICAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPg0K
PiAtLQ0KPiAxLjguMy4xDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
