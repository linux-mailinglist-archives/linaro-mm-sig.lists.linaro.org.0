Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DBC6F5615
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 12:25:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4CFD93F655
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 10:25:52 +0000 (UTC)
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by lists.linaro.org (Postfix) with ESMTPS id 3786C402F2
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Apr 2023 13:03:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b="YP/sLzxY";
	spf=none (lists.linaro.org: domain of thomas.hellstrom@linux.intel.com has no SPF policy when checking 134.134.136.65) smtp.mailfrom=thomas.hellstrom@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1682686987; x=1714222987;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=hYK1XSLoRGsBKCo9w+lFLE47lpEyIhbguL7HZvkfN5s=;
  b=YP/sLzxY2DPNtKFaoB0adgMKEbR41TRZVQbEcNtrLu0dgnyE+cDIhstU
   0P/W5hHFXlHYKgKSyDlX+6ps73F5YxX5O+MYQPzsn7tRDWLs2QGNBL02U
   X3d31P2Li0ZE3J3ZMlhxGqwTmHPb6mEqlU05CMQCMtk4lX5S8KjSFRiMl
   eN1RN2Un5zVuqLlRlLjGEzcNe0KRSAnZJTkFczYcGNC4sDOfN3U9w72nA
   fh3VYsP2cd/CxIbOGL7XxJSZg11KxCIvmGUbTjiBLNmJOEgrig1YtCkb1
   x+hrFGmwASONedTGLS+hsscjxM/fgrt0I5RU96cFQWREuG4o0MN9YL7qA
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="350650508"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200";
   d="scan'208";a="350650508"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Apr 2023 06:03:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="764276437"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200";
   d="scan'208";a="764276437"
Received: from kdobkakr-mobl1.ger.corp.intel.com (HELO [10.249.254.45]) ([10.249.254.45])
  by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Apr 2023 06:03:03 -0700
Message-ID: <60bb9e25-062c-a893-d5cc-1c6f1362703c@linux.intel.com>
Date: Fri, 28 Apr 2023 15:03:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: dri-devel@lists.freedesktop.org
References: <20230428125233.228353-1-thomas.hellstrom@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <20230428125233.228353-1-thomas.hellstrom@linux.intel.com>
X-Spamd-Result: default: False [-3.28 / 15.00];
	BAYES_HAM(-2.48)[97.63%];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	ASN(0.00)[asn:4983, ipnet:134.134.136.0/24, country:US];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[mga03.intel.com:rdns,mga03.intel.com:helo,intel.com:dkim];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3786C402F2
X-Spamd-Bar: ---
X-MailFrom: thomas.hellstrom@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6HIIR6FUPLLRZ66N7K7RLRHU53IZRXID
X-Message-ID-Hash: 6HIIR6FUPLLRZ66N7K7RLRHU53IZRXID
X-Mailman-Approved-At: Wed, 03 May 2023 10:19:03 +0000
CC: Christian Koenig <christian.koenig@amd.com>, intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH] dma-buf/dma-fence: Use a successful read_trylock() annotation for dma_fence_begin_signalling()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6HIIR6FUPLLRZ66N7K7RLRHU53IZRXID/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpPbiA0LzI4LzIzIDE0OjUyLCBUaG9tYXMgSGVsbHN0csO2bSB3cm90ZToNCj4gQ29uZHNpZGVy
IHRoZSBmb2xsb3dpbmcgY2FsbCBzZXF1ZW5jZToNCj4NCj4gLyogVXBwZXIgbGF5ZXIgKi8NCj4g
ZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmcoKTsNCj4gbG9jayh0YWludGVkX3NoYXJlZF9sb2Nr
KTsNCj4gLyogRHJpdmVyIGNhbGxiYWNrICovDQo+IGRtYV9mZW5jZV9iZWdpbl9zaWduYWxsaW5n
KCk7DQo+IC4uLg0KDQpUaGUgIlVwcGVyIGxheWVyIiBoZXJlIGN1cnJlbnRseSBiZWluZyB0aGUg
ZHJtIHNjaGVkdWxlciBhbmQgIkRyaXZlciANCmNhbGxiYWNrIiBiZWluZyBhbiB4ZSBzY2hlZHVs
ZXIgY2FsbGJhY2suDQoNCldoaWxlIG9wdC1pbiBhbm5vdGF0aW5nIHRoZSBkcm0gc2NoZWR1bGVy
IHdvdWxkIGFjaGlldmUgdGhlIHNhbWUgcmVzdWx0LCANCkkgdGhpbmsgdGhpcyBwYXRjaCBzaG91
bGQgYmUgY29uc2lkZXJlZCBhbnl3YXksIGFzIEkgZG9uJ3QgdGhpbmsgd2Ugd2lsbCANCm1pc3Mg
YW55IHRydWUgbG9ja2RlcCB2aW9sYXRpb25zIGFzIGEgcmVzdWx0IG9mIGl0Lg0KDQovVGhvbWFz
DQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
