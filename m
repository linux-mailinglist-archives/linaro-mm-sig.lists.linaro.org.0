Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BE279A7D8D4
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Apr 2025 11:00:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8B4144604D
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Apr 2025 09:00:07 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
	by lists.linaro.org (Postfix) with ESMTPS id 3B6603E80D
	for <linaro-mm-sig@lists.linaro.org>; Mon,  7 Apr 2025 08:59:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de;
	dmarc=pass (policy=none) header.from=lst.de
Received: by verein.lst.de (Postfix, from userid 2407)
	id 2DB0768BFE; Mon,  7 Apr 2025 10:59:44 +0200 (CEST)
Date: Mon, 7 Apr 2025 10:59:44 +0200
From: Christoph Hellwig <hch@lst.de>
To: Muchun Song <muchun.song@linux.dev>
Message-ID: <20250407085943.GA27481@lst.de>
References: <20250327092922.536-1-link@vivo.com> <20250404090111.GB11105@lst.de> <9A899641-BDED-4773-B349-56AF1DD58B21@linux.dev> <43DD699A-5C5D-429B-A2B5-61FBEAE2E252@linux.dev> <e9f44d16-fd9a-4d82-b40e-c173d068676a@vivo.com> <E4D6E02F-BC82-4630-8CB8-CD1A0163ABCF@linux.dev> <6f76a497-248b-4f92-9448-755006c732c8@vivo.com> <FDB7F930-8537-4B79-BAA6-AA782B39943A@linux.dev> <35D26C00-952F-481C-8345-E339F0ED770B@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <35D26C00-952F-481C-8345-E339F0ED770B@linux.dev>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Rspamd-Queue-Id: 3B6603E80D
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.29 / 15.00];
	BAYES_HAM(-2.99)[99.94%];
	RBL_SENDERSCORE_REPUT_7(0.50)[213.95.11.211:from];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	R_SPF_ALLOW(0.00)[+ip4:213.95.11.211];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:12337, ipnet:213.95.0.0/16, country:DE];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[19];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vivo.com,linux.intel.com,lst.de,infradead.org,redhat.com,intel.com,linaro.org,amd.com,linux-foundation.org,gmail.com,kernel.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,kvack.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DNSWL_BLOCKED(0.00)[213.95.11.211:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lst.de,none]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: PECE6XQNZRQLKVWHI7PI67THWXK3NEQ7
X-Message-ID-Hash: PECE6XQNZRQLKVWHI7PI67THWXK3NEQ7
X-MailFrom: hch@lst.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Huan Yang <link@vivo.com>, bingbu.cao@linux.intel.com, Christoph Hellwig <hch@lst.de>, Matthew Wilcox <willy@infradead.org>, Gerd Hoffmann <kraxel@redhat.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Andrew Morton <akpm@linux-foundation.org>, Uladzislau Rezki <urezki@gmail.com>, Shuah Khan <shuah@kernel.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-kselftest@vger.kernel.org, opensource.kernel@vivo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: CONFIG_HUGETLB_PAGE_OPTIMIZE_VMEMMAP is broken, was Re: [RFC PATCH 0/6] Deep talk about folio vmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PECE6XQNZRQLKVWHI7PI67THWXK3NEQ7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Apr 07, 2025 at 02:43:20PM +0800, Muchun Song wrote:
> By the way, in case you truly struggle to comprehend the fundamental
> aspects of HVO, I would like to summarize for you the user-visible
> behaviors in comparison to the situation where HVO is disabled.
> 
> HVO Status		Tail Page Structures	Head Page Structures
> Enabled			Read-Only (RO)		Read-Write (RW)
> Disabled		Read-Write (RW)		Read-Write (RW)
> 
> The sole distinction between the two scenarios lies in whether the
> tail page structures are allowed to be written or not. Please refrain
> from getting bogged down in the details of the implementation of HVO.

This feels extremely fragile to me.  I doubt many people know what
operations needs read vs write access to tail pages.  Or for higher
level operations if needs access to tail pages at all.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
