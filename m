Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCA2D13B51
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Jan 2026 16:35:10 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 98A793FDAE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Jan 2026 15:35:09 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by lists.linaro.org (Postfix) with ESMTPS id DF8ED3F7E4
	for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Jan 2026 15:35:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=pKVHuogS;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.219.53 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-8888a16d243so61069276d6.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Jan 2026 07:35:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1768232104; x=1768836904; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YhowijaztWf/3gTanh1QGKmo9pcuIvisiulcfP4DQN8=;
        b=pKVHuogSsA4nTVwzaYNxGh316Hqx+3lMuo4BtAEa/NKGeXTfevq1qQh27GA1NwmKZ7
         8Dansw93lQopUfjLsTvtVAh4suJzJEH+H2lcXacn/EKuKMlCu4iFTktDh3BNCCdHum3t
         76c4h9/FTxUjQvn7Cb57CJDKlzh+EOdh0MWAig8Jif+hmnD71QJc2ADzq79YML9pITsJ
         Mo3UpWHHTRs0a4gaGElu13YYCegQ7HGLeFrnmBwjKtJ1rSf5eDMR6u6R9ECvGRbFvrGO
         jSQHgDMDY8piyx967BhWj+MRqD1cTSwl3nYohyK2whve6xyobB57sm06P1O06pk7FiSz
         r6vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768232104; x=1768836904;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YhowijaztWf/3gTanh1QGKmo9pcuIvisiulcfP4DQN8=;
        b=NHA2uKU0swEnZyCjtioC750bMQjeeHYq+WAJTmxyXWsR6zhUmVZaEYPfMXr45r6BQ3
         XDFfowPnBlP86J3vb49eOVnn4J2LaJR1J/sDZXMYgrgfWm90lPC5kMJj2DYCdDduPPd9
         Jqm2GbOoASa0sVH7bv9ikvdyigLg/ouL1cT/6DWxlPYXbMt0talNn/rmKfwkN3YtGMKP
         dmRUnGsQeppr1i07L2+bl6HuDpPhI8J4x2dErkTP3AOOmKXTWixVcHf0YE03nJflxTLC
         F25iawN8qK2BjiMh6AoGBqJiGMUgW1q3zmxzAh4JRaEkfrdwp1fSCLPgPyBAFJ0+HJEr
         fl5g==
X-Forwarded-Encrypted: i=1; AJvYcCWaKOAKXf/C2JWo0IeXkWXwDtE0Kr2Wp6F+vtS2eiT37G5w7klrk8qw6Oo6j29wRTLFAlYMHwbLTkGwRYth@lists.linaro.org
X-Gm-Message-State: AOJu0Yw4y0t6JaoXZJ7GJbltRVsnVPJo6rjrcXlTwF5opwnEx9m0NfhL
	cZSdKfqFvB+ktwPrrUcefq3VaihKhxQaXCuxUzh10ns8liaMzH/YSsN9tmMX88zToFI=
X-Gm-Gg: AY/fxX6IlAe6zr9p0Na/ppEDGDLpmUVBNhcAheYZ/ppHpXWIrbCi51Fq8S5MPy7mvIb
	KtD5OcXonZFThWCs9AiEI+C7WjrzDsO4NUZh7i7uuDtxLxfLYGhz+cDnySScqvLz0N8YKASjIjd
	j8diDm8JfInhjxEtPBKo0s0e34VzcP9SlcFl6mNHwQZAwRZcUuNmt6YJsRsMtjkMNZf92lWk6Q5
	eXO9id6alvurfxbzajVl28CQcI12KftJHjXz2h7h3yLkC8mOMU9+WO9FT5AYxIZ2TmQ8f2cRuio
	kc/y2Kocq61KdoZnSyiC9ckmcUCxsCFdivxTMG5PTrO7k6YGOXzv0QmUiR6XQQAEc2Dc9XPwmc7
	ibcuRpudIa+XdA7VaoC3pWhJoDQMCNGgLFRXlZVai7RANM49I83VulQ3Nt1suLTEtdNZuTlzjRu
	Sb0LDJ8CXJ+qPoI0VRbSDu23gXZesu7qILuOFZzo9lgIV+T8kR1ZrYBcSSO1WHX9rB038=
X-Google-Smtp-Source: AGHT+IHFUDshOX5YDXPelpZvfCAVTGi9FjIy10Hnlj/GEw1ZiF/o5tF46ZaUyCruFsiUwzfjzfL6tA==
X-Received: by 2002:a05:6214:458e:b0:888:6fa6:782b with SMTP id 6a1803df08f44-890841d596amr270142346d6.30.1768232104214;
        Mon, 12 Jan 2026 07:35:04 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89077280fd3sm137593066d6.55.2026.01.12.07.35.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 07:35:03 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vfJwd-00000003R6K-0Swy;
	Mon, 12 Jan 2026 11:35:03 -0400
Date: Mon, 12 Jan 2026 11:35:03 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20260112153503.GF745888@ziepe.ca>
References: <20260111-dmabuf-revoke-v1-0-fb4bcc8c259b@nvidia.com>
 <eed9fd4c-ca36-4f6a-af10-56d6e0997d8c@amd.com>
 <20260112121956.GE14378@unreal>
 <2db90323-9ddc-4408-9074-b44d9178bc68@amd.com>
 <20260112141440.GE745888@ziepe.ca>
 <f7f1856a-44fa-44af-b496-eb1267a05d11@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f7f1856a-44fa-44af-b496-eb1267a05d11@amd.com>
X-Rspamd-Queue-Id: DF8ED3F7E4
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.47 / 15.00];
	BAYES_HAM(-2.97)[99.88%];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.53:from];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.219.53:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[ziepe.ca:dkim];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	DKIM_TRACE(0.00)[ziepe.ca:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: EKTO6KJT27FRQCMOW36X3H7ARBMSW7U4
X-Message-ID-Hash: EKTO6KJT27FRQCMOW36X3H7ARBMSW7U4
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Simona Vetter <simona.vetter@ffwll.ch>, Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Williamson <alex@shazbot.org>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, linux-rdma@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, iommu@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/4] dma-buf: add revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EKTO6KJT27FRQCMOW36X3H7ARBMSW7U4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBKYW4gMTIsIDIwMjYgYXQgMDM6NTY6MzJQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gPiBUaGUgcHJvYmxlbSByZXZva2UgaXMgZGVzaWduZWQgdG8gc29sdmUgaXMg
dGhhdCBtYW55IGltcG9ydGVycyBoYXZlDQo+ID4gaGFyZHdhcmUgdGhhdCBjYW4gZWl0aGVyIGJl
IERNQSdpbmcgb3IgZmFpbGluZy4gVGhlcmUgaXMgbm8gZmF1bHQNCj4gPiBtZWNoYW5pbXMgdGhh
dCBjYW4gYmUgdXNlZCB0byBpbXBsZW1lbnQgdGhlIGZ1bGwgIm1vdmUgYXJvdW5kIGZvciBubw0K
PiA+IHJlYXNvbiIgc2VtYW50aWNzIHRoYXQgYXJlIGltcGxpZWQgYnkgbW92ZV9ub3RpZnkuDQo+
IA0KPiBJbiB0aGlzIGNhc2UganVzdCBjYWxsIGRtYV9idWZfcGluKCkuIFdlIGFscmVhZHkgc3Vw
cG9ydCB0aGF0DQo+IGFwcHJvYWNoIGZvciBSRE1BIGRldmljZXMgd2hpY2ggY2FuJ3QgZG8gT0RQ
Lg0KDQpUaGF0IGFsb25lIGlzbid0IGdvb2QgZW5vdWdoIC0gdGhlIHBhdGNoIGFkZGluZyB0aGUg
bm9uLU9EUCBzdXBwb3J0DQphbHNvIGNvbnRhaW5lZCB0aGlzOg0KDQpzdGF0aWMgdm9pZA0KaWJf
dW1lbV9kbWFidWZfdW5zdXBwb3J0ZWRfbW92ZV9ub3RpZnkoc3RydWN0IGRtYV9idWZfYXR0YWNo
bWVudCAqYXR0YWNoKQ0Kew0KCXN0cnVjdCBpYl91bWVtX2RtYWJ1ZiAqdW1lbV9kbWFidWYgPSBh
dHRhY2gtPmltcG9ydGVyX3ByaXY7DQoNCglpYmRldl93YXJuX3JhdGVsaW1pdGVkKHVtZW1fZG1h
YnVmLT51bWVtLmliZGV2LA0KCQkJICAgICAgICJJbnZhbGlkYXRlIGNhbGxiYWNrIHNob3VsZCBu
b3QgYmUgY2FsbGVkIHdoZW4gbWVtb3J5IGlzIHBpbm5lZFxuIik7DQp9DQoNCnN0YXRpYyBzdHJ1
Y3QgZG1hX2J1Zl9hdHRhY2hfb3BzIGliX3VtZW1fZG1hYnVmX2F0dGFjaF9waW5uZWRfb3BzID0g
ew0KCS5hbGxvd19wZWVyMnBlZXIgPSB0cnVlLA0KCS5tb3ZlX25vdGlmeSA9IGliX3VtZW1fZG1h
YnVmX3Vuc3VwcG9ydGVkX21vdmVfbm90aWZ5LA0KfTsNCg0KU28gd2UgY2FuJ3QganVzdCBhbGxv
dyBpdCB0byBhdHRhY2ggdG8gZXhwb3J0ZXJzIHRoYXQgYXJlIGdvaW5nIHRvDQpzdGFydCBjYWxs
aW5nIG1vdmVfbm90aWZ5IHdoaWxlIHBpbm5lZC4NCg0KTG9va2luZyBhcm91bmQgSSBkb24ndCBz
ZWUgYW55b25lIGVsc2UgZG9pbmcgc29tZXRoaW5nIGxpa2UgdGhpcywgYW5kDQpyZWFkaW5nIHlv
dXIgcmVtYXJrcyBJIHRoaW5rIEVGQSBndXlzIGdvdCBpdCB3cm9uZy4gU28gSSdtIHdvbmRlcmlu
Zw0KaWYgdGhpcyBzaG91bGQgbm90IGhhdmUgYmVlbiBhbGxvd2VkLiBVbmZvcnR1bmF0ZWx5IDUg
eWVhcnMgbGF0ZXIgSSdtDQpwcmV0dHkgc3VyZSBpdCBpcyBiZWluZyB1c2VkIGluIHBsYWNlcyB3
aGVyZSB3ZSBkb24ndCBoYXZlIEhXIHN1cHBvcnQNCnRvIGludmFsaWRhdGUgYXQgYWxsLCBhbmQg
aXQgaXMgbm93IHdlbGwgZXN0YWJsaXNoZWQgdUFQSSB0aGF0IHdlDQpjYW4ndCBqdXN0IGJyZWFr
Lg0KDQpXaGljaCBpcyB3aHkgd2UgYXJlIGNvbWluZyB0byBuZWdvdGlhdGlvbiBiZWNhdXNlIGF0
IGxlYXN0IHRoZSBhYm92ZQ0KaXNuJ3QgZ29pbmcgdG8gd29yayBpZiBtb3ZlX25vdGlmeSBpcyBj
YWxsZWQgZm9yIHJldm9rZSByZWFzb25zLCBhbmQNCndlJ2QgbGlrZSB0byBibG9jayBhdHRhY2hp
bmcgZXhwb3J0ZXJzIHRoYXQgbmVlZCByZXZva2UgZm9yIHRoZSBhYm92ZS4NCg0KU28sIHdvdWxk
IHlvdSBiZSBoYXBwaWVyIHdpdGggdGhpcyBpZiB3ZSBkb2N1bWVudGVkIHRoYXQgbW92ZV9ub3Rp
ZnkNCmNhbiBiZSBjYWxsZWQgZm9yIHBpbm5lZCBpbXBvcnRlcnMgZm9yIHJldm9rZSBwdXJwb3Nl
cyBhbmQgZmlndXJlIG91dA0Kc29tZXRoaW5nIHRvIG1hcmsgdGhlIGFib3ZlIGFzIHNwZWNpYWwg
c28gZXhwb3J0ZXJzIGNhbiBmYWlsIHBpbiBpZg0KdGhleSBhcmUgZ29pbmcgdG8gY2FsbCBtb3Zl
X25vdGlmeT8NCg0KVGhlbiB0aGlzIHNlcmllcyB3b3VsZCB0cmFuc2Zvcm0gaW50byBkb2N1bWVu
dGF0aW9uLCBtYWtpbmcgVkZJTw0KYWNjZXB0IHBpbiBhbmQgY29udGludWUgdG8gY2FsbCBtb3Zl
X25vdGlmeSBhcyBpdCBkb2VzIHJpZ2h0IG5vdywgYW5kDQpzb21lIGxvZ2ljIHRvIHJlamVjdCB0
aGUgUkRNQSBub24tT0RQIGltcG9ydGVyLg0KDQpKYXNvbg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
