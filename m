Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SLPEHM65fGk0OgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 15:01:50 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D52FBB6F6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 15:01:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 821F440171
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 14:01:43 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by lists.linaro.org (Postfix) with ESMTPS id 77EF63F75A
	for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Jan 2026 14:01:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=TMRJvkyW;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.169 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-8c710439535so170149085a.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Jan 2026 06:01:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1769781679; x=1770386479; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RZzJd1rUXnKgbbFoik2J/HwA+Mcwjh2UI/kxMGq+fms=;
        b=TMRJvkyWtXJD74Fx0VuMtZ5QChLTRGCMWesybvZDIWXnJLtMfoI3PVNwN7ZeQ4IJpq
         09X9wNfcK0Q1oFo9XapMWO8Uy5W3aBNFYabiBOnL/xRTmDoNKFjbdEc/LGmIueW/6RrD
         o0O0eyoZxO3pIfo4ghJfbQHWU2/WkXtX/UM+uO+ltXxpjy71tsAdX2NCtRW/JDj5bTYZ
         XonSq2KW4d/DJuThIN2Y6/KYwCuAjnNe/A7Wncr/y6BuFil8WmeGT4rRjpaNliJLH7AG
         e+v4nvRk3Hjdqkl1m/31Q5us5UA0k0tVZas7qhjM4o8YP+d0tHeO2qmrgZ8vplifsJm2
         NMxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769781679; x=1770386479;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RZzJd1rUXnKgbbFoik2J/HwA+Mcwjh2UI/kxMGq+fms=;
        b=qIk4691HPlOTv2U1UFkvsH1Ggvo1JVVYEs0qcEzwYX3z2zkreuOM/XQw4xZ20qrCds
         6vQpSgg77Ouo9l0uiKa7GhwnmJ6RPSA5Br5vuX0nkvxOivJZiL2Abe00Zw9cZ1Gjra0u
         eL8gJadyyVST6Nrsrc7BDPnj+/py32dwclxOPlciJM8xK0ezFwnBoJCoZ+lFcf0wAVCh
         Qe5ljBZUGBudTcedXdqvMkTQE+iRxlr+DwX4Abh3Igzr+CcWJZd+F9LjweEGtLM4oQtH
         EHdnoxWtKhX5CK81+kcSmVVrF3MVRfMITF0c7PZvVUNeSsVEbzumslJXHyDTSX/Z4LeD
         KR2Q==
X-Forwarded-Encrypted: i=1; AJvYcCWhxEsw77pOEdDuJds3ZGcaWVhKet1CY2pggGUrVhf0XxR9buVMeUuxxkrytmN5i08KzmcEcmGvmihZFUF/@lists.linaro.org
X-Gm-Message-State: AOJu0YzXJhvAUDg2dn9585CSQPzQ/aKIwoQfoJEor4dUR/qb9eLTv8jv
	FZXDqI/Hai5BdmCRryA0YhJsUdEQdVo17bbck4/C/SfB/7br2XGpdbBYfXRY58tLYCo=
X-Gm-Gg: AZuq6aJe4gICEXUEV4RKPN0r38lRErNEJqXQBCggFfKIBtk9/rNLIggQU0O/FaukITt
	bSdXm9OKoOhZhIfkDtDxhqKSRy77j0dPCakwurwkRHshbnchTmf6q4PXFEiNgL8rT1pB6mgmtQA
	xd/QRbHd8zKuax4ZWCWdgyYd4JYTODQW2kl1gpbAMmtjauikCxtGq5nnXqHOIwg7yLjqiDnEj50
	knhB9V/BAeqgFYlLQva2PGu8z3ZLeQ4WAq8AJ8tIwmVYhtpIZfLg5eAUmQntX1pU4QqN+5iEVwP
	FzCnW7bardnhft80t72v/+89qUYT3zCioJPePoImW+bjE7rQrEvTgfDQ4udktrZY8v8f5rcqEte
	Fu9YEcwvLCcGD0/8b57YVlJD7wPpAGMtvuQUkfdOHBjECNFyaEgB6YW+kEzA3V7N+fZebJd2sv2
	ZJGnkXQo8ivFSp7oRUGRJXm5JKaoMFY1jNiBYOs6jpvvZLpZ9JMeVyHZyd4g+/PKbjsI2QNUzEb
	XWmdw==
X-Received: by 2002:a05:620a:290f:b0:8c3:650d:577e with SMTP id af79cd13be357-8c9eb224827mr368793585a.4.1769781649371;
        Fri, 30 Jan 2026 06:00:49 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c711b95e4esm700915485a.15.2026.01.30.06.00.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 06:00:48 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vlp3H-0000000Annc-1AWG;
	Fri, 30 Jan 2026 10:00:47 -0400
Date: Fri, 30 Jan 2026 10:00:47 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20260130140047.GD2328995@ziepe.ca>
References: <20260124-dmabuf-revoke-v5-0-f98fca917e96@nvidia.com>
 <20260124-dmabuf-revoke-v5-6-f98fca917e96@nvidia.com>
 <b4cf1379-d68b-45da-866b-c461d6feb51b@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b4cf1379-d68b-45da-866b-c461d6feb51b@amd.com>
X-Spamd-Bar: ---
Message-ID-Hash: CAKAWATCTBZHEECS6AHRAQ2WBXELSOC3
X-Message-ID-Hash: CAKAWATCTBZHEECS6AHRAQ2WBXELSOC3
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kerne
 l@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 6/8] dma-buf: Add dma_buf_attach_revocable()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CAKAWATCTBZHEECS6AHRAQ2WBXELSOC3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	RSPAMD_URIBL_FAIL(0.00)[linaro.org:query timed out];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[33];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	RSPAMD_EMAILBL_FAIL(0.00)[linaro-mm-sig-leave.lists.linaro.org:query timed out,linaro-mm-sig.lists.linaro.org:query timed out];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,ziepe.ca:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 4D52FBB6F6
X-Rspamd-Action: no action

T24gRnJpLCBKYW4gMzAsIDIwMjYgYXQgMDk6NDM6MjJBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gT24gMS8yNC8yNiAyMDoxNCwgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPiA+
IEZyb206IExlb24gUm9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+DQo+ID4gDQo+ID4gU29t
ZSBleHBvcnRlcnMgbmVlZCBhIGZsb3cgdG8gc3luY2hyb25vdXNseSByZXZva2UgYWNjZXNzIHRv
IHRoZSBETUEtYnVmDQo+ID4gYnkgaW1wb3J0ZXJzLiBPbmNlIHJldm9rZSBpcyBjb21wbGV0ZWQg
dGhlIGltcG9ydGVyIGlzIG5vdCBwZXJtaXR0ZWQgdG8NCj4gPiB0b3VjaCB0aGUgbWVtb3J5IG90
aGVyd2lzZSB0aGV5IG1heSBnZXQgSU9NTVUgZmF1bHRzLCBBRVJzLCBvciB3b3JzZS4NCj4gDQo+
IFRoYXQgYXBwcm9hY2ggaXMgc2VyaW91c2x5IG5vdCBnb2luZyB0byBmbHkuDQo+IA0KPiBZb3Ug
Y2FuIHVzZSB0aGUgaW52YWxpZGF0ZV9tYXBwaW5ncyBhcHByb2FjaCB0byB0cmlnZ2VyIHRoZSBp
bXBvcnRlcg0KPiB0byBnaXZlIGJhY2sgdGhlIG1hcHBpbmcsIGJ1dCB3aGVuIHRoZSBtYXBwaW5n
IGlzIHJlYWxseSBnaXZlbiBiYWNrDQo+IGlzIHN0aWxsIGNvbXBsZXRlbHkgb24gdGhlIGltcG9y
dGVyIHNpZGUuDQoNClllcywgYW5kIHRoYXQgaXMgd2hhdCB0aGlzIGlzIGFsbCBkb2luZywgdGhl
cmUgaXMgdGhlIHdhaXQgZm9yIHRoZQ0KaW1wb3J0ZXIncyB1bm1hcCB0byBoYXBwZW4gaW4gdGhl
IHNlcXVlbmNlLg0KDQo+IEluIG90aGVyIHdvcmRzIHlvdSBjYW4ndCBkbyB0aGUgc2hvdCBkb3du
IHJldm9rZSBzZW1hbnRpY3MgeW91IGFyZQ0KPiB0cnlpbmcgdG8gZXN0YWJsaXNoIGhlcmUuDQoN
CkFsbCB0aGlzIGlzIGRvaW5nIGlzIHNheWluZyBpZiBkbWFfYnVmX2F0dGFjaF9yZXZvY2FibGUo
KSA9PSB0cnVlIHRoZW4NCnRoZSBpbXBvcnRlciB3aWxsIGNhbGwgdW5tYXAgd2l0aGluIGJvdW5k
ZWQgdGltZSBhZnRlcg0KZG1hX2J1Zl9pbnZhbGlkYXRlX21hcHBpbmdzKCkuDQoNClRoYXQncyBp
dC4gSWYgdGhlIGltcG9ydGluZyBkcml2ZXIgZG9lc24ndCB3YW50IHRvIGRvIHRoYXQgdGhlbiBp
dA0Kc2hvdWxkIG1ha2UgZG1hX2J1Zl9hdHRhY2hfcmV2b2NhYmxlKCk9ZmFsc2UuDQoNClZGSU8v
ZXRjIG9ubHkgd2FudCB0byBpbnRlcndvcmsgd2l0aCBpbXBvcnRlcnMgdGhhdCBjYW4gZG8gdGhp
cy4NCg0KSmFzb24NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
