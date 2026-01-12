Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A350AD13099
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Jan 2026 15:14:49 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B74A840157
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Jan 2026 14:14:48 +0000 (UTC)
Received: from mail-qv1-f68.google.com (mail-qv1-f68.google.com [209.85.219.68])
	by lists.linaro.org (Postfix) with ESMTPS id 91CF83F7E4
	for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Jan 2026 14:14:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=jxfP+T+1;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.219.68 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qv1-f68.google.com with SMTP id 6a1803df08f44-88a367a1dbbso110029446d6.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Jan 2026 06:14:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1768227282; x=1768832082; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=idOldAb4LAo0ksi3bVUeAksa3fPCwgsdaazjCrmLC+c=;
        b=jxfP+T+1XcnGqNmRpivcv5gCLSrujfAkra/F4oL2I4kYgAy1eMe73K5DORDjS/WTYO
         0b2w/t07SQuhKpXWfk7FZQexjavzjTUKh/H9gqtK1Jir9f5z1waBkwn3819vv4N2+Zpq
         wLytfaKZUf1NtauhK9o6ykaZiE8AJurVI4NbM24B6J8s2DmWsMVlW7oRE98l/PI8yaSQ
         4Ni7iV1r4VSEFJ0OzKYrGVhF2rOf/oWOgxsosR3AgYVUMYym2oeYgdGGaeb40qcVWWII
         j8lpciIRoWMcPVjDvoqVbBFdMCN9PpOFtQxmXAFbWC4XQNtXkLfkZt3jeeWAmdwmbLJr
         kUrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768227282; x=1768832082;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=idOldAb4LAo0ksi3bVUeAksa3fPCwgsdaazjCrmLC+c=;
        b=G9kxG+r4fWJ1mTKmPIuykY78T2rLmmh8PedjEGcM0kYw9/kbEuTKGyG2BhvH3O8fSv
         dFjZ3/idmwUGrhQ9XJ2aAa+Rh1k1405tdPAFJ+i/kML42JmNxnrxNNkeDxw5eR6Ub0vY
         SWcEd5bNbeqh85U2ayk7CP3UnTo4Urr5fVXCP7bDq7BTLsYkkFrVU1nQKHHu27dmM0qa
         XhhhVyTYMBNGDleQZpMVC3PwEHgpb6LtFVvda9j+EeOI+lBzcTc8puDQREEgUVSl4pse
         a9WlDLS70KIpDLmpqrH5oZEB6p+FCMI/NsNJ964uaYAzA8+Inp+beYHuutHnok81+tlL
         YfLw==
X-Forwarded-Encrypted: i=1; AJvYcCX59HaJEk0vlIDe0SADJIKiDAzuX30SXEJhWoiLXqA8euADlL786dnxqiz8J7oIKUsLbWE1IQAd4kErWSKs@lists.linaro.org
X-Gm-Message-State: AOJu0Yxq7JbDkgu4bjOdq1y6rb5Pr5kTOF33shZw/XH1lqB6bJ7lczDn
	rRjKPklgG3YkF5av5GGC73ychtdHHvICkCsYJCuZ8CvDgoAQ/kNLDftcq5vDKjQEpTg=
X-Gm-Gg: AY/fxX5vUGZdWZ73anG+29tNBHvmy16ffvjbySznRRKOnet567JWo64jrbjslbuKgbV
	XYKOSajGtN46D14gNxIibDRocSBnP9m9wBwIwx2sjUnNoVGsNYqy0ABzeMfZ3BrLtGcHizeIoB1
	2V4BvunH4LAFaZStmNVRYunqndbOofr1PzryT7nH0Qxdkwe9quPhEvBuTRJHf9k+Q8ggSh6D2jE
	OgXNIzLTB/pc8xt9ESOTPtUkWuoA02xv+2kUVP3i+aR26k/SOjm/8GA5NljDf4BJ53QxkaDBrLr
	zz+2Zmpm3EivzB9RlFLj5M+DrxKgICttEAfCPrTu9+8Vl+nG5YFjWPT+Y9rBGllr/qRrD1bOBVl
	Ye9eIsZnSArgCR2rjpZvbgvrVOIfdZOVCyIBsaMjX+baFa0sVGFamhVTX/FEDQx8j6OVi81VaFi
	OUA5b8EaKE9gSBfVLONEgyNmyJKZrqf3n96YsyG0GoTggboxY0C31fRtZzlos8Bu5IQtg=
X-Google-Smtp-Source: AGHT+IF7Zvp/3g9UZvP3sG1m9fZ0kBeHeUwdq4Y0K8ZVazGpfRYYWPSZc44gsn+OV4Jjh6pl1L7JlA==
X-Received: by 2002:a05:6214:460e:b0:888:8913:89af with SMTP id 6a1803df08f44-8908418b4f4mr232874836d6.15.1768227281987;
        Mon, 12 Jan 2026 06:14:41 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8907723436fsm157350086d6.34.2026.01.12.06.14.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 06:14:41 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vfIgr-00000003QFh-01tA;
	Mon, 12 Jan 2026 10:14:41 -0400
Date: Mon, 12 Jan 2026 10:14:40 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
	Simona Vetter <simona.vetter@ffwll.ch>
Message-ID: <20260112141440.GE745888@ziepe.ca>
References: <20260111-dmabuf-revoke-v1-0-fb4bcc8c259b@nvidia.com>
 <eed9fd4c-ca36-4f6a-af10-56d6e0997d8c@amd.com>
 <20260112121956.GE14378@unreal>
 <2db90323-9ddc-4408-9074-b44d9178bc68@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2db90323-9ddc-4408-9074-b44d9178bc68@amd.com>
X-Rspamd-Queue-Id: 91CF83F7E4
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.98%];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.68:from];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DWL_DNSWL_BLOCKED(0.00)[ziepe.ca:dkim];
	DMARC_NA(0.00)[ziepe.ca];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.219.68:from,142.162.112.119:received];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[ziepe.ca:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: YDCADNA4QGALYXGMZ4FKJYWGQ2GUSE55
X-Message-ID-Hash: YDCADNA4QGALYXGMZ4FKJYWGQ2GUSE55
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Williamson <alex@shazbot.org>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, linux-rdma@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, iommu@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/4] dma-buf: add revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YDCADNA4QGALYXGMZ4FKJYWGQ2GUSE55/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBKYW4gMTIsIDIwMjYgYXQgMDE6NTc6MjVQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gQ2xlYXIgTkFLIHRvIHRoYXQgcGxhbi4gVGhpcyBpcyBub3Qgc29tZXRoaW5n
IERNQS1idWYgc2hvdWxkIG5lZWQgdG8NCj4gZGVhbCB3aXRoIGFuZCBhcyBmYXIgYXMgSSBjYW4g
c2VlIGlzIGluY29tcGF0aWJsZSB3aXRoIHRoZSBVQVBJLg0KDQpXZSBoYWQgdGhpcyBkaXNjdXNz
aW9uIHdpdGggU2ltb25hIGFuZCB5b3UgYSB3aGlsZSBiYWNrIGFuZCB0aGVyZSB3YXMNCmEgcHJl
dHR5IGNsZWFyIGRpcmVjdGlvbiB3ZSBuZWVkZWQgdG8gYWRkIGEgcmV2b2tlIHRvIHNpdCBpbmJl
dHdlZW4NCnBpbiBhbmQgbW92ZS4gSSB0aGluayBMZW9uIGhhcyBubyBxdWl0ZSBnb3QgdGhlICJk
bWFidWYgbGluZ28iIGRvd24NCnJpZ2h0IHRvIGV4cGxhaW4gdGhpcy4NCg0KIGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2RyaS1kZXZlbC9aNFo0TktxVkcyVmJ2OThRQHBoZW5vbS5mZndsbC5sb2Nh
bC8NCg0KICAgU2luY2UgeW91IG1lbnRpb24gcGluIGhlcmUsIEkgdGhpbmsgdGhhdCdzIGFub3Ro
ZXIgYXNwZWN0IG9mIHRoZSByZXZvY2FibGUNCiAgIHZzIGR5bmFtaWMgcXVlc3Rpb24uIER5bmFt
aWMgYnVmZmVycyBhcmUgZXhwZWN0ZWQgdG8gc29tZXRpbWVzIGp1c3QgbW92ZQ0KICAgYXJvdW5k
IGZvciBubyByZWFzb24sIGFuZCBpbXBvcnRlcnMgbXVzdCBiZSBhYmxlIHRvIGNvcGUuDQoNCiAg
IEZvciByZWNvdmFibGUgZXhwb3J0ZXJzL2ltcG9ydGVycyBJJ2QgZXhwZWN0IHRoYXQgbW92ZW1l
bnQgaXMgbm90DQogICBoYXBwZW5pbmcsIG1lYW5pbmcgaXQncyBwaW5uZWQgdW50aWwgdGhlIHNp
bmdsZSB0ZXJtaW5hbCByZXZvY2F0aW9uLiBBbmQNCiAgIG1heWJlIEkgcmVhZCB0aGUga3ZtIHN0
dWZmIHdyb25nLCBidXQgaXQgcmVhZHMgbW9yZSBsaWtlIHRoZSBsYXR0ZXIgdG8gbWUNCiAgIHdo
ZW4gY3Jhd2xpbmcgdGhyb3VnaCB0aGUgcGZuIGNvZGUuDQoNClRoZSBpc3N1ZSBpcyB0aGF0IERN
QUJVRiBvbmx5IG9mZmVycyB0d28gYXR0YWNobWVudCBvcHRpb25zIHRvZGF5LCBwaW4NCmFuZCBt
b3ZlLiBpb21tdWZkL2t2bSBjYW4gaW1wbGVtZW50IHBpbiwgYnV0IG5vdCBtb3ZlIGJlY2F1c2Ug
dGhleQ0KZG9uJ3Qgc3VwcG9ydCBmYXVsdGluZy4NCg0KdmZpbyBhbmQgb3RoZXJzIGRvbid0IG5l
ZWQgbW92ZSB3aXRoIGZhdWx0aW5nIGJ1dCB0aGV5IGRvIG5lZWQgcGluDQp3aXRoIGEgdGVybWlu
YWwsIGVtZXJnZW5jeSwgcmV2b2NhdGlvbi4NCg0KVGhlIHB1cnBvc2Ugb2YgcmV2b2tlIGlzIHRv
IGFkZCBhIG5ldyBuZWdvdGlhdGVkIGF0dGFjaG1lbnQgbW9kZQ0KYmV0d2VlbiBleHBvcnRlciBh
bmQgaW1wb3J0ZXIgdGhhdCBiZWhhdmVzIHRoZSBzYW1lIGFzIHBpbiB1cCB1bnRpbA0KdGhlIHVz
ZXIgZG9lcyBzb21ldGhpbmcgY2F0YXN0cm9waGljIChsaWtlIHViaW5kIGEgZHJpdmVyKSB0aGVu
IGENCnJldm9rZSBpbnZhbGlkYXRpb24gaXMgdXNlZCB0byBjbGVhbiBldmVyeXRoaW5nIHVwIHNh
ZmVseS4NCg0KWW91IGFyZSByaWdodCB0aGF0IHRoZSBleGlzdGluZyBtb3ZlX25vdGlmeSBhbHJl
YWR5IG1lZXRzIHRoaXMNCnNlbWFudGljLCBhbmQgdG9kYXkgVkZJTyBleHBvcnRlciwgUkRNQSBP
RFAgaW1wb3J0ZXIgZXZlbiBpbXBsZW1lbnQNCnRoaXMuIFVwb24gVkZJTyByZXZva2UgbW92ZV9u
b3RpZnkoKSB3aWxsIGludmFsaWRhdGUgYW5kIG1hcCgpIHdpbGwNCmZhaWwuIFJETUEgT0RQIHRo
ZW4gSFcgZmFpbHMgYWxsIGZhdWx0cy4NCg0KVGhlIHByb2JsZW0gcmV2b2tlIGlzIGRlc2lnbmVk
IHRvIHNvbHZlIGlzIHRoYXQgbWFueSBpbXBvcnRlcnMgaGF2ZQ0KaGFyZHdhcmUgdGhhdCBjYW4g
ZWl0aGVyIGJlIERNQSdpbmcgb3IgZmFpbGluZy4gVGhlcmUgaXMgbm8gZmF1bHQNCm1lY2hhbmlt
cyB0aGF0IGNhbiBiZSB1c2VkIHRvIGltcGxlbWVudCB0aGUgZnVsbCAibW92ZSBhcm91bmQgZm9y
IG5vDQpyZWFzb24iIHNlbWFudGljcyB0aGF0IGFyZSBpbXBsaWVkIGJ5IG1vdmVfbm90aWZ5Lg0K
DQpUaHVzIHRoZXkgY2FuJ3QgaW1wbGVtZW50IG1vdmVfbm90aWZ5IQ0KDQpSZXZva2UgYWxsb3dz
IHRoaXMgbGVzcyBjYXBhYmxlIEhXIHRvIHN0aWxsIGJlIHVzYWJsZSB3aXRoIGV4cG9ydGVycywN
CnNvIGxvbmcgYXMgZXhwb3J0ZXJzIHByb21pc2Ugb25seSB0byBpc3N1ZSBhbiBpbnZhbGlkYXRp
b24gZm9yIGENCiJzaW5nbGUgdGVybWluYWwgcmV2b2NhdGlvbiIuIFdoaWNoIGRvZXMgbmljZWx5
IG1hdGNoIHRoZSBuZWVkcyBvZg0KZXhwb3J0ZXJzIHdoaWNoIGFyZSBwcmltYXJpbHkgcGluIGJh
c2VkLg0KDQpJT1cgdGhpcyBpcyBhbiBlbmhhbmNlbWVudCB0byBwaW4gbW9kZXMgdG8gYWRkIGEg
dGVybWluYWwgZXJyb3IgY2FzZQ0KaW52YWxpZGF0aW9uIHRvIHBpbm5lZCBhdHRhY2htZW50cy4N
Cg0KSXQgaXMgbm90IGludGVuZGVkIHRvIGJlIFVBUEkgY2hhbmdpbmcsIGFuZCBMZW9uIGlzIG5v
dCB0cnlpbmcgdG8gc2F5DQp0aGF0IGltcG9ydGVycyBoYXZlIHRvIGRyb3AgdGhlaXIgYXR0YWNo
bWVudC4gVGhlIGF0dGFjaG1lbnQganVzdA0KYmVjb21lcyBwZXJtYW5lbnRseSBub24tcHJlc2Vu
dC4NCg0KSmFzb24NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
