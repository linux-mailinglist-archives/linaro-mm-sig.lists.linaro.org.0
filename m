Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2FBD143B5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Jan 2026 18:04:43 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3E0143F7CF
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Jan 2026 17:04:42 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by lists.linaro.org (Postfix) with ESMTPS id 387C83F7CF
	for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Jan 2026 17:04:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=OjzkeJb0;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.177 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-8c0f15e8247so935576085a.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Jan 2026 09:04:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1768237477; x=1768842277; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OcyVQ16xm+GiG5uZamh0DYF4z7rm9kbmhFMirpeUsGo=;
        b=OjzkeJb0hejqIvErRe6Yvk3U2xKVrLoI84zXeunnRNNcJYBZ2NV3sCa1yMtVpjUqC/
         mYE3JlP4qdzlWwKbHkgL8upHOJJm0qRsq7u+mVQCO1r/dS+1gfAS28u+f/64clcygcP2
         aSXsk218ysnbLUNL+IUNhIBLnB5nHoBQHG4WfqtRyFL8jftSbj+0hQkkRAaUWs60V5kx
         msqpfdXI/mj2EjNhHuDIw/sRq6urlaFjTxc8s0LrmbqiAlNA/G9/pqWcHtYm1vr/9VzT
         rFJe5fUJuI/0wGHTKY41Zto2e0UdZZRhGaviN4Epx/cwllx8GBhJ+k6znNSRElFhaybP
         WSXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768237477; x=1768842277;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OcyVQ16xm+GiG5uZamh0DYF4z7rm9kbmhFMirpeUsGo=;
        b=Ld9XEGNfYFoO0MaDpyptvJSlSwbv8sujoZVhVLUVjq/lZ9DqXAm1xEqWrTW6uFmK9M
         MeVu+PvuIkFL1q6JbrOJyBrx0ohdaQerGdrWL3Sj8tczVmw58tFvRfXw5ULHsABIc3Q6
         1HUOQLo5aJw5F7jAJINBgVWkhVlhSW0q25LLG5C2sDiu393ddzjw3As5QPgazCiH6hYM
         e6IR5EDhGtUCkIlO3WU1m6bweZTRmz6EX4OMajXKkmyoOVUeGgFbKz4T63LU/lNNZ5Q7
         k7X0Y+xyGjU/ZDeU4byooCVC7Qhv+vJltCtPKmzJU7gCeuue1wK+asVcOoh9mKFsGOTd
         sfOg==
X-Forwarded-Encrypted: i=1; AJvYcCW8+GDqRx/vitxgmfy60jB8EZVanATvvt/Co52lmTElbSLydGMZ3F5H7n9TzHRUsatGWkgPs11dM/LT6QYG@lists.linaro.org
X-Gm-Message-State: AOJu0YxXlbS7Ti/aNLE+Knm5bQmUCnLG7bABhyDt0v/wE224nwJ22lyc
	SE98wYtRs1Sj7znHoff0Voj5iHfaBd64kuBj3eppLyJXHICP9qqDbKmde+usS6mo28U=
X-Gm-Gg: AY/fxX7phFRcLqoMKg6PxkaudFCl3rGETWuLAYbR+7pQZIXPE0lJTdago8zddBPxpaP
	0qj/iCF9fN2bqd+meNDSg/dU5F4iYVag0a6wOtIc2cog6JVKobv1HKURZSLlg2qLFaEk8L5Um8J
	ygSVROrhM8+w3NlsjsmV19JrLBuTqjV+nket81c9/h6kDNXkD+R3yxsK8ddS22dyBCv4YoD44KB
	NtNCEfuiJvjUHuL/OmxRf912OZ+907YWibq/awO9GzA1ARe/eF7fWS2mJAU/vS0jlhOK6ij6lUv
	uZctfGzFcZV0bWudKqaTEBkY+F//SckMVtHmzb0LPHx1yao/+LuD32F1oU9gcEgIxH5O3KJ67hI
	wVGcmEagqVx9VUWrT9BPHTqcni4J2uacdFuFIiw2EyLDBzzeLkpaKMiYUJwDMaoSevr/YZPEnxb
	+Hzkqc9UyxmDLDBCTFk9EK7HiWSB8SI4QX62OvA04pmJGBCsvRg6PAogTEuDoEXbSAginatEWkb
	Becww==
X-Google-Smtp-Source: AGHT+IFNLsjliAScqbFFhKVSqiGiRJW+dH1w6MdFsmu8SpI9IHI7Dx7AHxGoF9vGvT6LPNemfh4Zsw==
X-Received: by 2002:a05:620a:2807:b0:8b5:5a03:36e3 with SMTP id af79cd13be357-8c38936c4e7mr2741533585a.16.1768237475821;
        Mon, 12 Jan 2026 09:04:35 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c37f51cdcesm1544825185a.26.2026.01.12.09.04.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 09:04:35 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vfLLG-00000003RoH-2rL8;
	Mon, 12 Jan 2026 13:04:34 -0400
Date: Mon, 12 Jan 2026 13:04:34 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20260112170434.GH745888@ziepe.ca>
References: <20260111-dmabuf-revoke-v1-0-fb4bcc8c259b@nvidia.com>
 <eed9fd4c-ca36-4f6a-af10-56d6e0997d8c@amd.com>
 <20260112121956.GE14378@unreal>
 <2db90323-9ddc-4408-9074-b44d9178bc68@amd.com>
 <20260112141440.GE745888@ziepe.ca>
 <f7f1856a-44fa-44af-b496-eb1267a05d11@amd.com>
 <20260112153503.GF745888@ziepe.ca>
 <f2f82341-3799-4379-a0e7-6e9d56a7eda1@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f2f82341-3799-4379-a0e7-6e9d56a7eda1@amd.com>
X-Rspamd-Queue-Id: 387C83F7CF
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.177:from];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.222.177:from];
	DNSWL_BLOCKED(0.00)[142.162.112.119:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	DKIM_TRACE(0.00)[ziepe.ca:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: RUI6UGZYU4JHJDJOMK25F6WLPAG5MJK5
X-Message-ID-Hash: RUI6UGZYU4JHJDJOMK25F6WLPAG5MJK5
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Simona Vetter <simona.vetter@ffwll.ch>, Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Williamson <alex@shazbot.org>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, linux-rdma@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, iommu@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/4] dma-buf: add revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RUI6UGZYU4JHJDJOMK25F6WLPAG5MJK5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBKYW4gMTIsIDIwMjYgYXQgMDU6MTI6MzZQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gPiBzdGF0aWMgc3RydWN0IGRtYV9idWZfYXR0YWNoX29wcyBpYl91bWVtX2Rt
YWJ1Zl9hdHRhY2hfcGlubmVkX29wcyA9IHsNCj4gPiAJLmFsbG93X3BlZXIycGVlciA9IHRydWUs
DQo+ID4gCS5tb3ZlX25vdGlmeSA9IGliX3VtZW1fZG1hYnVmX3Vuc3VwcG9ydGVkX21vdmVfbm90
aWZ5LA0KPiA+IH07DQo+ID4gDQo+ID4gU28gd2UgY2FuJ3QganVzdCBhbGxvdyBpdCB0byBhdHRh
Y2ggdG8gZXhwb3J0ZXJzIHRoYXQgYXJlIGdvaW5nIHRvDQo+ID4gc3RhcnQgY2FsbGluZyBtb3Zl
X25vdGlmeSB3aGlsZSBwaW5uZWQuDQo+IA0KPiBUaGUgcG9pbnQgaXMgZXhwb3J0ZXJzIGFyZSBh
bHJlYWR5IGRvaW5nIHRoaXMuDQoNCjooIFNvIG9idmlvdXNseSB0aGlzIGRvZXNuJ3Qgd29yayBm
dWxseSBjb3JyZWN0bHkuLg0KDQo+ID4gV2hpY2ggaXMgd2h5IHdlIGFyZSBjb21pbmcgdG8gbmVn
b3RpYXRpb24gYmVjYXVzZSBhdCBsZWFzdCB0aGUgYWJvdmUNCj4gPiBpc24ndCBnb2luZyB0byB3
b3JrIGlmIG1vdmVfbm90aWZ5IGlzIGNhbGxlZCBmb3IgcmV2b2tlIHJlYXNvbnMsIGFuZA0KPiA+
IHdlJ2QgbGlrZSB0byBibG9jayBhdHRhY2hpbmcgZXhwb3J0ZXJzIHRoYXQgbmVlZCByZXZva2Ug
Zm9yIHRoZSBhYm92ZS4NCj4gDQo+IEFoLCB5ZXMgdGhhdCBtYWtlcyBzZW5zZS4gVGhpcyBpcyBj
bGVhcmx5IGEgbmV3IHJlcXVpcmVtZW50Lg0KPiANCj4gU28gYmFzaWNhbGx5IGZvciBQQ0llIGhv
dHBsdWcgd2FzIGEgcmFyZSBldmVudCB3ZXJlIHdlIHNhaWQgd2UgaGF2ZQ0KPiBzb21lIHByb2Js
ZW1zIHdpdGggbm9uLU9EUCBidXQgd2UgY2FuIGxpdmUgd2l0aCB0aGF0LCBidXQgZm9yIHRoaXMN
Cj4gdXNlIGNhc2UgaGVyZSBpdCdzIG1vcmUgbGlrZSBhIHBlcmZlY3RseSBub3JtYWwgY29uZGl0
aW9uIHRoYXQNCj4gdXNlcnNwYWNlIGNhbiB0cmlnZ2VyLg0KDQpZZXMgdGhhdCBzZWVtcyB0byBi
ZSBleGFjdGx5IHRoZSBjYXNlLiBJIGRpZG4ndCBrbm93IGFib3V0IHRoZSBQQ0kgUkFTDQpjYXNl
IHVudGlsIG5vdyA6KA0KDQo+IFNvIHRoZSBleHBvcnRlciB3YW50cyB0byByZWplY3QgaW1wb3J0
ZXJzIHdoaWNoIGNhbid0IGhhbmRsZSBhDQo+IG1hcHBpbmcgaW52YWxpZGF0aW9uIHdoaWxlIHRo
ZSBCTyBpcyBwaW5uZWQsIGNvcnJlY3Q/DQoNClllcy4gSSB0aGluayBhdCBhIG1pbmltdW0gZXhw
b3J0ZXJzIHdoZXJlIGl0IGlzIGEgbm9ybWFsIHVzZSBjYXNlDQpzaG91bGQgYmxvY2sgaXQgc28g
dW5wcml2IHVzZXIgc3BhY2UgY2Fubm90IHRyaWdnZXIgaW5jb3JyZWN0IGJlaGF2aW9yDQovIGln
bm9yZWQgaW52YWxpZGF0aW9uLiBpZSBWRklPIHdpbGwgdHJpZ2dlciB0aGlzIGJhc2VkIG9uIHVu
cHJpdiB1c2VyDQpzeXN0ZW0gY2FsbHMuDQoNCkkgc3VwcG9zZWQgd2UgaGF2ZSB0byByZXRhaW4g
dGhlIFBDSSBSQVMgbWlzYmVoYXZpb3IgZm9yIG5vdyBhdCBsZWFzdC4NCkl0IHdvdWxkIHByb2Jh
Ymx5IGJlIHVBUEkgcmVncmVzc2lvbiB0byBzdGFydCBibG9ja2luZyBzb21lIG9mIHRoZQ0KZXhp
c3Rpbmcgb25lcy4NCg0KSXQgYWxzbyBzZWVtcyB3ZSBzaG91bGQgaW52ZXN0IGluIHRoZSBSRE1B
IHNpZGUgdG8gbWluaW1pemUgd2hlcmUgdGhpcw0KaXMgdXNlZC4NCg0KPiA+IFNvLCB3b3VsZCB5
b3UgYmUgaGFwcGllciB3aXRoIHRoaXMgaWYgd2UgZG9jdW1lbnRlZCB0aGF0IG1vdmVfbm90aWZ5
DQo+ID4gY2FuIGJlIGNhbGxlZCBmb3IgcGlubmVkIGltcG9ydGVycyBmb3IgcmV2b2tlIHB1cnBv
c2VzIGFuZCBmaWd1cmUgb3V0DQo+ID4gc29tZXRoaW5nIHRvIG1hcmsgdGhlIGFib3ZlIGFzIHNw
ZWNpYWwgc28gZXhwb3J0ZXJzIGNhbiBmYWlsIHBpbiBpZg0KPiA+IHRoZXkgYXJlIGdvaW5nIHRv
IGNhbGwgbW92ZV9ub3RpZnk/DQo+IA0KPiBUaGF0IHdvdWxkIHdvcmsgZm9yIG1lLiBJIG1lYW4g
aXQgaXMgYWxyZWFkeSBjdXJyZW50IHByYWN0aWNlLCB3ZQ0KPiBqdXN0IG5ldmVyIGZ1bGx5IGRv
Y3VtZW50ZWQgaXQuDQoNCk9LDQogDQo+ID4gVGhlbiB0aGlzIHNlcmllcyB3b3VsZCB0cmFuc2Zv
cm0gaW50byBkb2N1bWVudGF0aW9uLCBtYWtpbmcgVkZJTw0KPiA+IGFjY2VwdCBwaW4gYW5kIGNv
bnRpbnVlIHRvIGNhbGwgbW92ZV9ub3RpZnkgYXMgaXQgZG9lcyByaWdodCBub3csIGFuZA0KPiA+
IHNvbWUgbG9naWMgdG8gcmVqZWN0IHRoZSBSRE1BIG5vbi1PRFAgaW1wb3J0ZXIuDQo+IA0KPiBJ
IHRoaW5rIHdlIGp1c3QgbmVlZCB0byBleHBvc2UgdGhpcyB3aXRoIGZsYWdzIG9yIHNpbWlsYXIg
ZnJvbSB0aGUNCj4gaW1wb3J0ZXIgc2lkZS4gQXMgZmFyIGFzIEkga25vdyBSRE1BIHdpdGhvdXQg
T0RQIGlzIGN1cnJlbnRseSB0aGUNCj4gb25seSBvbmUgcmVhbGx5IG5lZWRpbmcgdGhpcyAoZXhj
ZXB0IGZvciBjcm9zcyBkZXZpY2Ugc2Nhbm91dCwgYnV0DQo+IHRoYXQgaXMgc3BlY2lhbCBhbnl3
YXkpLg0KDQpJIGRpZCBub3Qgc2VlIGFueSBvdGhlciBpbXBvcnRlcnMgd2l0aCBhbiBvYnZpb3Vz
IGJyb2tlbiBtb3ZlX25vdGlmeSwNCnNvIEkgaG9wZSB0aGlzIGlzIHJpZ2h0LiBFdmVuIGlvbW11
ZmQgaGFzIGEgd29ya2luZyBtb3ZlX25vdGlmeQ0KKGRpc3J1cHRpdmUsIGJ1dCB3b3JraW5nKS4N
Cg0KSG93IGRvIHlvdSBmZWVsIGFib3V0IGFuIGVudW0gaW4gdGhlIG9wczoNCg0KK2VudW0gZG1h
X2J1Zl9tb3ZlX25vdGlmeV9sZXZlbCB7DQorCS8qDQorCSAqIFRoZSBpbXBvcnRlciBjYW4gcGF1
c2UgSFcgYWNjZXNzIHdoaWxlIG1vdmVfbm90aWZ5IGlzIHJ1bm5pbmcNCisJICogYW5kIGNsZWFu
bHkgaGFuZGxlIGR5bmFtaWMgY2hhbmdlcyB0byB0aGUgRE1BIG1hcHBpbmcgd2l0aG91dA0KKwkg
KiBhbnkgZGlzcnVwdGlvbi4NCisJICovDQorCURNQV9CVUZfTU9WRV9OT1RJRllfRkFVTFRJTkcg
PSAwLA0KKwkvKg0KKwkgKiBUaGUgaW1wb3J0ZXIgY2FuIHN0b3AgSFcgYWNjZXNzIGFuZCBkaXNy
dXB0aXZlbHkgZmFpbCBhbnkNCisJICogb2YgaXRzIERNQSBhY3Rpdml0eS4gbW92ZV9ub3RpZnkg
c2hvdWxkIG9ubHkgYmUgY2FsbGVkIGlmIHRoZQ0KKwkgKiBleHBvcnRlciBpcyBleHBlcmllbmNp
bmcgYW4gdW51c3VhbCBlcnJvciBhbmQgY2FuIGFjY2VwdA0KKwkgKiB0aGF0IHRoZSBpbXBvcnRl
ciB3aWxsIGJlIGRpc3J1cHRlZC4NCisJICovDQorCURNQV9CVUZfTU9WRV9OT1RJRllfUkVWT0tJ
TkcsDQorCS8qDQorCSAqIG1vdmVfbm90aWZ5IGlzIG5vdCBzdXBwb3J0ZWQgYXQgYWxsIGFuZCBt
dXN0IG5vdCBiZSBjYWxsZWQuIERvIG5vdA0KKwkgKiBpbnRyb2R1Y2UgbmV3IGRyaXZlcnMgdXNp
bmcgdGhpcywgaXQgaGFzIHNpZ25pZmljYW50IGRyYXcgYmFja3MNCisJICogYXJvdW5kIFBDSSBl
cnJvciBoYW5kbGluZyBhbmQgb3RoZXIgY2FzZXMuIEl0IGhhcyB0aGUgbW9zdCBsaW1pdGVkDQor
CSAqIHNldCBvZiBjb21wYXRpYmxlIGltcG9ydGVycy4NCisJICovDQorCURNQV9CVUZfTU9WRV9O
T1RJRllfVU5TVVBQT1JURUQsDQorfTsNCisNCiAvKioNCiAgKiBzdHJ1Y3QgZG1hX2J1Zl9hdHRh
Y2hfb3BzIC0gaW1wb3J0ZXIgb3BlcmF0aW9ucyBmb3IgYW4gYXR0YWNobWVudA0KICAqDQpAQCAt
NDU3LDYgKzQ4MCw4IEBAIHN0cnVjdCBkbWFfYnVmX2F0dGFjaF9vcHMgew0KIAkgKi8NCiAJYm9v
bCBhbGxvd19wZWVyMnBlZXI7DQogDQorCWVudW0gZG1hX2J1Zl9tb3ZlX25vdGlmeV9sZXZlbCBt
b3ZlX25vdGlmeV9sZXZlbDsNCisNCiAJLyoqDQogCSAqIEBtb3ZlX25vdGlmeTogW29wdGlvbmFs
XSBub3RpZmljYXRpb24gdGhhdCB0aGUgRE1BLWJ1ZiBpcyBtb3ZpbmcNCiAJICoNCg0KSmFzb24N
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
