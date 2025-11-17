Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C1575C65698
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Nov 2025 18:16:37 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B5D793F820
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Nov 2025 17:16:36 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by lists.linaro.org (Postfix) with ESMTPS id 1A4FA3F689
	for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Nov 2025 17:16:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=aslMe7lp;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.160.171 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-4ee04609ffaso9134301cf.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Nov 2025 09:16:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1763399780; x=1764004580; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=P1EKuTl21MaZwOVAnrWkECo68IZFcqZRr/UNlppTPmo=;
        b=aslMe7lpjtbuznavlfPJMVEkfUbQxQpVKKjrKQjbJzSoCXHULFBpOnI8SBybDXK6O5
         a5p6vXr+LS12xj534uRmaBq+Wf8GifHTTMgH30BA32Ysi9t8HV6fqhctbwmuhWwnAKzJ
         AUBOLfJqqm9S36f86j0AkGO9wBtHSpC+KLYjO7O6RLV2K//V6tujAgAYjGN0dlvg6dyT
         vGrvWZiJqEN0iQNc+wo9JIswZaSYFvS3Xbff+CbLg+zlGtvXSEeq32iNGKBrBlJyna01
         11ScG0gbQoZ5sbK1InfLWB+P1CGcuIWsOXbzE/MKY3M4EgGle2j85PjbWB6vMT/V+PMA
         HKRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763399780; x=1764004580;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P1EKuTl21MaZwOVAnrWkECo68IZFcqZRr/UNlppTPmo=;
        b=ZscWX1JyFVWAqPoCSuM334fHGlKXDNf/diX5hkPc9TapGLBWqTP+aCfTJNpXXXLe5D
         +ENw9I9QZ6rtWb5o3VNJAj4Hr6IaVDY/jK/fWvxZ3KW/f5D+ECQ9WQvcJYkilGq5dOd/
         fJQ9oYZOL6akptq7iDw5qTPTK6wBUIVbTlumCacjwVJ2tgseap7xgV38XiRUwW8ON1MJ
         RT+sigg6BAkZkBs/lqafN36FIbbahnuK9VVvCpZ8/NbulmmmBfML8y2voq03YCTYOzJa
         vpQkzjaO3ln7r33Q2/7G/Do3rYTyfMIoUvHSnQsfQzINxfcxRzI3RonyTU7pNsQRVzeZ
         hLNQ==
X-Forwarded-Encrypted: i=1; AJvYcCWniMSMbDAgNlKI+ko0CJyqQ1hrHq0EHrmtxJLYh6lhnG+U+VEeg5brsXkNAbk9beMp24sWqAL91nc/wl5H@lists.linaro.org
X-Gm-Message-State: AOJu0YwWq3fqSKEWaFGgD+mIxXhzs016KOXimcheOs8+b+SiFJZufugh
	cwPMPVZ60ms7v/YUuHbTTPz/lWII9kOhb2kvlrAWRMqwxIwrMr3FdYAgOz0wfr4W/bA=
X-Gm-Gg: ASbGncuceKZOjMoFfBah+5Zm+CfoXxPPStIoz4ZZoGgDcdEqA/2CnLlJaOM2iGJMlsC
	75L6pK4sa+FgBi45e/8J5GeNiVoMoIhzw2F+686GB0xkqmYmdDmIfWJcTWEEh8wytUuTeN0t1CH
	AQJ+pVblacN78UUWmIGbh4zTJzC8wkEsui0m+OIUlVerK9a1PV1lJZBplZNweaYfpZe2ivf5q5P
	LjCgsTuxzFtR0ctmG/LLqu1c4HOJOnw78e0uhQGHUA0YaAHwzdu/x3PsE54m+0Yz7VYbTMMQJ1V
	hN91D96bxtrPOhUCiarQ9c64uDvOzpNmDQDYQic6UD/XUzqj0fut7X4yxw7oGSDUVbrHdsLKgT/
	ushDfAtYW5T2zhCcFJ2sCkn52hG+GXglpiCZu3LRqGs1rmKLzyzevdmKFCWwdnYgZuEh9ZCSDWE
	fJETXe5q7RJeAZQVTt3srCDcN8EHAKtVVCIIRvf10cahMTUha4YQRNE8gl
X-Google-Smtp-Source: AGHT+IHdomOA3fXFLRj5Qifi24Z8ILoy1R2tZQWL9HXByV1pnhKykseLX/aaxM1vhUTUzCoPwrvJjg==
X-Received: by 2002:a05:622a:22aa:b0:4ec:ef20:ac52 with SMTP id d75a77b69052e-4edfc87511cmr159168241cf.79.1763399780286;
        Mon, 17 Nov 2025 09:16:20 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-47-55-120-4.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.120.4])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ee1c21ea34sm32656311cf.30.2025.11.17.09.16.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 09:16:19 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vL2pv-000000005PX-0G4a;
	Mon, 17 Nov 2025 13:16:19 -0400
Date: Mon, 17 Nov 2025 13:16:19 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Alex Williamson <alex@shazbot.org>
Message-ID: <20251117171619.GB17968@ziepe.ca>
References: <20251106-dmabuf-vfio-v7-0-2503bf390699@nvidia.com>
 <20251110134218.5e399b0f.alex@shazbot.org>
 <da399efa-ad5b-4bdc-964d-b6cc4a4fc55d@amd.com>
 <20251117083620.4660081a.alex@shazbot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251117083620.4660081a.alex@shazbot.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[35];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.160.171:from];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	DKIM_TRACE(0.00)[ziepe.ca:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1A4FA3F689
X-Spamd-Bar: ---
Message-ID-Hash: 7435HJRGFDHCHHXURMW2VEFTAN5FM46E
X-Message-ID-Hash: 7435HJRGFDHCHHXURMW2VEFTAN5FM46E
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Leon Romanovsky <leon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-hardenin
 g@vger.kernel.org, Alex Mastro <amastro@fb.com>, Nicolin Chen <nicolinc@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 00/11] vfio/pci: Allow MMIO regions to be exported through dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7435HJRGFDHCHHXURMW2VEFTAN5FM46E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBOb3YgMTcsIDIwMjUgYXQgMDg6MzY6MjBBTSAtMDcwMCwgQWxleCBXaWxsaWFtc29u
IHdyb3RlOg0KPiBPbiBUdWUsIDExIE5vdiAyMDI1IDA5OjU0OjIyICswMTAwDQo+IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6DQo+IA0KPiA+IE9uIDEx
LzEwLzI1IDIxOjQyLCBBbGV4IFdpbGxpYW1zb24gd3JvdGU6DQo+ID4gPiBPbiBUaHUsICA2IE5v
diAyMDI1IDE2OjE2OjQ1ICswMjAwDQo+ID4gPiBMZW9uIFJvbWFub3Zza3kgPGxlb25Aa2VybmVs
Lm9yZz4gd3JvdGU6DQo+ID4gPiAgIA0KPiA+ID4+IENoYW5nZWxvZzoNCj4gPiA+PiB2NzoNCj4g
PiA+PiAgKiBEcm9wcGVkIHJlc3RvcmVfcmV2b2tlIGZsYWcgYW5kIGFkZGVkIHZmaW9fcGNpX2Rt
YV9idWZfbW92ZQ0KPiA+ID4+ICAgIHRvIHJldmVyc2UgbG9vcC4NCj4gPiA+PiAgKiBGaXhlZCBz
cGVsbGluZyBlcnJvcnMgaW4gZG9jdW1lbnRhdGlvbiBwYXRjaC4NCj4gPiA+PiAgKiBSZWJhc2Vk
IG9uIHRvcCBvZiB2Ni4xOC1yYzMuDQo+ID4gPj4gICogQWRkZWQgaW5jbHVkZSB0byBzdGRkZWYu
aCB0byB2ZmlvLmgsIHRvIGtlZXAgdWFwaSBoZWFkZXIgZmlsZSBpbmRlcGVuZGVudC4gIA0KPiA+
ID4gDQo+ID4gPiBJIHRoaW5rIHdlJ3JlIHdpbmRpbmcgZG93biBvbiByZXZpZXcgY29tbWVudHMu
ICBJdCdkIGJlIGdyZWF0IHRvIGdldA0KPiA+ID4gcDJwZG1hIGFuZCBkbWEtYnVmIGFja3Mgb24g
dGhpcyBzZXJpZXMuICBPdGhlcndpc2UgaXQncyBiZWVuIHBvc3RlZA0KPiA+ID4gZW5vdWdoIHRo
YXQgd2UnbGwgYXNzdW1lIG5vIG9iamVjdGlvbnMuICBUaGFua3MsICANCj4gPiANCj4gPiBBbHJl
YWR5IGhhdmUgaXQgb24gbXkgVE9ETyBsaXN0IHRvIHRha2UgYSBjbG9zZXIgbG9vaywgYnV0IG5v
IGlkZWEgd2hlbiB0aGF0IHdpbGwgYmUuDQo+ID4gDQo+ID4gVGhpcyBwYXRjaCBzZXQgaXMgb24g
cGxhY2UgNCBvciA1IG9uIGEgcmF0aGVyIGxvbmcgbGlzdCBvZiBzdHVmZiB0byByZXZpZXcvZmlu
aXNoLg0KPiANCj4gSGkgQ2hyaXN0aWFuLA0KPiANCj4gR2VudGxlIG51ZGdlLiAgTGVvbiBwb3N0
ZWQgdjhbMV0gbGFzdCB3ZWVrLCB3aGljaCBpcyBub3QgZHJhd2luZyBhbnkNCj4gbmV3IGNvbW1l
bnRzLiAgRG8geW91IGZvcmVzZWUgaGF2aW5nIHRpbWUgZm9yIHJldmlldyB0aGF0IEkgc2hvdWxk
DQo+IHN0aWxsIGhvbGQgb2ZmIG1lcmdpbmcgZm9yIHY2LjE5IGEgYml0IGxvbmdlcj8gIFRoYW5r
cywNCg0KSSByZWFsbHkgd2FudCB0aGlzIG1lcmdlZCB0aGlzIGN5Y2xlLCBhbG9uZyB3aXRoIHRo
ZSBpb21tdWZkIHBhcnQsDQp3aGljaCBtZWFucyBpdCBuZWVkcyB0byBnbyBpbnRvIHlvdXIgdHJl
ZSBieSB2ZXJ5IGVhcmx5IG5leHQgd2VlayBvbiBhDQpzaGFyZWQgYnJhbmNoIHNvIEkgY2FuIGRv
IHRoZSBpb21tdWZkIHBhcnQgb24gdG9wLg0KDQpJdCBpcyB0aGUgbGFzdCBibG9ja2luZyBrZXJu
ZWwgcGllY2UgdG8gY29uY2x1ZGUgdGhlIHZpb21tdSBzdXBwb3J0DQpyb2xsIG91dCBpbnRvIHFl
bXUgZm9yIGlvbW11ZmQgd2hpY2ggcXVpdGUgYSBsb3Qgb2YgcGVvcGxlIGhhdmUgYmVlbg0Kd29y
a2luZyBvbiBmb3IgeWVhcnMgbm93Lg0KDQpJTUhPIHRoZXJlIGlzIG5vdGhpbmcgcHJvZm91bmQg
aW4gdGhlIGRtYWJ1ZiBwYXRjaCwgaXQgd2FzIHdyaXR0ZW4gYnkNCnRoZSBleHBlcnQgaW4gdGhl
IG5ldyBETUEgQVBJIG9wZXJhdGlvbiwgYW5kIGRvZXNuJ3QgZm9ybSBhbnkNCnRyb3VibGVzb21l
IEFQSSBjb250cmFjdHMuIEl0IGlzIGFsc28gdGhlIHNhbWUgYmFzaWMgY29kZSBhcyBmcm9tIHRo
ZQ0KdjEgaW4gSnVseSBqdXN0IG1vdmVkIGludG8gZG1hYnVmIC5jIGZpbGVzIGluc3RlYWQgb2Yg
dmZpbyAuYyBmaWxlcyBhdA0KQ2hyaXN0b3BoJ3MgcmVxdWVzdC4NCg0KTXkgaG9wZSBpcyBEUk0g
Zm9sa3Mgd2lsbCBwaWNrIHVwIHRoZSBiYXRvbiBhbmQgY29udGludWUgdG8gaW1wcm92ZQ0KdGhp
cyB0byBtb3ZlIG90aGVyIGRyaXZlcnMgYXdheSBmcm9tIGRtYV9tYXBfcmVzb3VyY2UoKS4gU2lt
b25hIHRvbGQNCm1lIHBlb3BsZSBoYXZlIHdhbnRlZCBETUEgQVBJIGltcHJvdmVtZW50cyBmb3Ig
YWdlcywgbm93IHdlIGhhdmUgdGhlbSwNCm5vdyBpcyB0aGUgdGltZSENCg0KQW55IHJlbWFya3Mg
YWZ0ZXIgdGhlIGZhY3QgY2FuIGJlIGFkZHJlc3NlZCBpbmNyZW1lbnRhbGx5Lg0KDQpJZiB0aGVy
ZSBhcmUgbm8gY29uY3JldGUgdGVjaG5pY2FsIHJlbWFya3MgcGxlYXNlIHRha2UgaXQuIDYgbW9u
dGhzIGlzDQpsb25nIGVub3VnaCB0byB3YWl0IGZvciBmZWVkYmFjay4NCg0KVGhhbmtzLA0KSmFz
b24NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
