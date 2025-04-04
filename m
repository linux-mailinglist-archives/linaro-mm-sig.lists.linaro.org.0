Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AB513A7B9D1
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Apr 2025 11:24:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BFFE7446EE
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Apr 2025 09:24:23 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
	by lists.linaro.org (Postfix) with ESMTPS id B34D23EA16
	for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Apr 2025 09:24:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de;
	dmarc=pass (policy=none) header.from=lst.de
Received: by verein.lst.de (Postfix, from userid 2407)
	id 04C5168B05; Fri,  4 Apr 2025 11:01:12 +0200 (CEST)
Date: Fri, 4 Apr 2025 11:01:11 +0200
From: Christoph Hellwig <hch@lst.de>
To: Huan Yang <link@vivo.com>
Message-ID: <20250404090111.GB11105@lst.de>
References: <20250327092922.536-1-link@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250327092922.536-1-link@vivo.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.34 / 15.00];
	BAYES_HAM(-2.04)[95.27%];
	RBL_SENDERSCORE_REPUT_5(1.50)[213.95.11.211:from];
	ONCE_RECEIVED(0.20)[];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	R_SPF_ALLOW(0.00)[+ip4:213.95.11.211];
	RCPT_COUNT_TWELVE(0.00)[19];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:12337, ipnet:213.95.0.0/16, country:DE];
	RCVD_COUNT_ONE(0.00)[1];
	MID_RHS_MATCH_FROM(0.00)[];
	URIBL_BLOCKED(0.00)[lst.de:mid];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,infradead.org,lst.de,redhat.com,intel.com,linaro.org,amd.com,linux-foundation.org,gmail.com,kernel.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,kvack.org,vivo.com,linux.dev];
	R_DKIM_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lst.de,none]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B34D23EA16
Message-ID-Hash: ZMGTI3VOQOXNVWTVVQBHN7YWBJNJEGIN
X-Message-ID-Hash: ZMGTI3VOQOXNVWTVVQBHN7YWBJNJEGIN
X-MailFrom: hch@lst.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: bingbu.cao@linux.intel.com, Matthew Wilcox <willy@infradead.org>, Christoph Hellwig <hch@lst.de>, Gerd Hoffmann <kraxel@redhat.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Andrew Morton <akpm@linux-foundation.org>, Uladzislau Rezki <urezki@gmail.com>, Shuah Khan <shuah@kernel.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-kselftest@vger.kernel.org, opensource.kernel@vivo.com, Muchun Song <muchun.song@linux.dev>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] CONFIG_HUGETLB_PAGE_OPTIMIZE_VMEMMAP is broken, was Re: [RFC PATCH 0/6] Deep talk about folio vmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZMGTI3VOQOXNVWTVVQBHN7YWBJNJEGIN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

After the btrfs compressed bio discussion I think the hugetlb changes that
skip the tail pages are fundamentally unsafe in the current kernel.

That is because the bio_vec representation assumes tail pages do exist, so
as soon as you are doing direct I/O that generates a bvec starting beyond
the present head page things will blow up.  Other users of bio_vecs might
do the same, but the way the block bio_vecs are generated are very suspect
to that.  So we'll first need to sort that out and a few other things
before we can even think of enabling such a feature.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
