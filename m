Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wNveFoEJ4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:08:33 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B494115CF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:08:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 41A6540501
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:08:32 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 51F104015A
	for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Dec 2025 00:09:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=aNI6UMU2;
	spf=pass (lists.linaro.org: domain of david@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=david@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id DA02C60151;
	Wed, 17 Dec 2025 00:09:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CCD5C4CEF1;
	Wed, 17 Dec 2025 00:09:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765930180;
	bh=aZR9wSyi+zJsIHvJriUMfLQABKctzyX5fXgs8GO8n4U=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=aNI6UMU2+C9auZatxSgLKTA4RJ8Tc8yGSyXopvdXSVgldtvnHa6Ken0sARx4y/+7E
	 vTZ50xFdj1tMQ//XOkLKgN4vvA0M8q5a90sGtX+/o49rR0WOpEAoagq+nWaDWWFzC2
	 A+ckdLIbUqlzEVk/gc+gkcqWB01O7qoty08Du5crzhaVhPQGYiiWrUEyDGfCxakcBV
	 7/Vhq9JR056MU/kxoCZ6IQJrLttskLj7lv7AonqdrTHCXfFEdheN1OlszL9XqoU/8Y
	 GI4TxOTez3ZYyi/BtyoTEdpc9tG9UwXITx9UVU576wwFjXer281n4kx9KhSKtCsvy+
	 odgHmbJMW4r/A==
Message-ID: <e76e25ef-f112-4689-9753-34709613b9c2@kernel.org>
Date: Wed, 17 Dec 2025 01:09:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Bagas Sanjaya <bagasdotme@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux AMDGPU <amd-gfx@lists.freedesktop.org>,
 Linux DRI Development <dri-devel@lists.freedesktop.org>,
 Linux Filesystems Development <linux-fsdevel@vger.kernel.org>,
 Linux Media <linux-media@vger.kernel.org>, linaro-mm-sig@lists.linaro.org,
 kasan-dev@googlegroups.com,
 Linux Virtualization <virtualization@lists.linux.dev>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Linux Network Bridge <bridge@lists.linux.dev>,
 Linux Networking <netdev@vger.kernel.org>
References: <20251215113903.46555-1-bagasdotme@gmail.com>
 <20251215113903.46555-3-bagasdotme@gmail.com>
From: "David Hildenbrand (Red Hat)" <david@kernel.org>
Content-Language: en-US
In-Reply-To: <20251215113903.46555-3-bagasdotme@gmail.com>
X-Spamd-Bar: ----
X-MailFrom: david@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2M4K5R5OEDMEBOLNZUAPBVVUFCFGQZTU
X-Message-ID-Hash: 2M4K5R5OEDMEBOLNZUAPBVVUFCFGQZTU
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:04:49 +0000
CC: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <siqueira@igalia.com>, Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich <dakr@kernel.org>, Philipp Stanner <phasta@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>, Sumit Semwal <sumit.semwal@linaro.org>, Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>, Dmitry Vyukov <dvyukov@google.com>, "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>, Xuan Zhuo <xuanzhuo@linux.alibaba.com>, =?UTF-8?Q?Eugenio_P=C3=A9rez?= <eperezma@redhat.com>, Andrew Morton <akpm@linux-foundation.org>, Ul
 adzislau Rezki <urezki@gmail.com>, Nikolay Aleksandrov <razor@blackwall.org>, Ido Schimmel <idosch@nvidia.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Taimur Hassan <Syed.Hassan@amd.com>, Wayne Lin <Wayne.Lin@amd.com>, Alex Hung <alex.hung@amd.com>, Aurabindo Pillai <aurabindo.pillai@amd.com>, Dillon Varone <Dillon.Varone@amd.com>, George Shen <george.shen@amd.com>, Aric Cyr <aric.cyr@amd.com>, Cruise Hung <Cruise.Hung@amd.com>, Mario Limonciello <mario.limonciello@amd.com>, Sunil Khatri <sunil.khatri@amd.com>, Dominik Kaszewski <dominik.kaszewski@amd.com>, Peter Zijlstra <peterz@infradead.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, Max Kellermann <max.kellermann@ionos.com>, "Nysal Jan K.A." <nysal@linux.ibm.com>, Ryan Roberts <ryan.roberts@arm.com>, Alexey Skidanov <alexey.skidanov@intel.com>, Vlastimil Babka <vbabka@suse.cz>, Kent Overst
 reet <kent.overstreet@linux.dev>, Vitaly Wool <vitaly.wool@konsulko.se>, Harry Yoo <harry.yoo@oracle.com>, Mateusz Guzik <mjguzik@gmail.com>, NeilBrown <neil@brown.name>, Amir Goldstein <amir73il@gmail.com>, Jeff Layton <jlayton@kernel.org>, Ivan Lipski <ivan.lipski@amd.com>, Tao Zhou <tao.zhou1@amd.com>, YiPeng Chai <YiPeng.Chai@amd.com>, Hawking Zhang <Hawking.Zhang@amd.com>, Lyude Paul <lyude@redhat.com>, Daniel Almeida <daniel.almeida@collabora.com>, Luben Tuikov <luben.tuikov@amd.com>, Matthew Auld <matthew.auld@intel.com>, Roopa Prabhu <roopa@cumulusnetworks.com>, Mao Zhu <zhumao001@208suo.com>, Shaomin Deng <dengshaomin@cdjrlc.com>, Charles Han <hanchunchao@inspur.com>, Jilin Yuan <yuanjilin@cdjrlc.com>, Swaraj Gaikwad <swarajgaikwad1925@gmail.com>, George Anthony Vernon <contact@gvernon.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 02/14] mm: Describe @flags parameter in memalloc_flags_save()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2M4K5R5OEDMEBOLNZUAPBVVUFCFGQZTU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	DATE_IN_PAST(1.00)[2895];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,googlegroups.com,lists.linux.dev,kvack.org];
	FREEMAIL_CC(0.00)[amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,zeniv.linux.org.uk,suse.cz,linaro.org,google.com,redhat.com,linux.alibaba.com,linux-foundation.org,blackwall.org,nvidia.com,davemloft.net,infradead.org,oracle.com,ionos.com,linux.ibm.com,arm.com,linux.dev,konsulko.se,brown.name,collabora.com,cumulusnetworks.com,208suo.com,cdjrlc.com,inspur.com,gvernon.com];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.562];
	RCPT_COUNT_GT_50(0.00)[85];
	FROM_NEQ_ENVFROM(0.00)[david@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[kernel.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 30B494115CF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 12/15/25 12:38, Bagas Sanjaya wrote:
> Sphinx reports kernel-doc warning:
> 
> WARNING: ./include/linux/sched/mm.h:332 function parameter 'flags' not described in 'memalloc_flags_save'
> 
> Describe @flags to fix it.
> 
> Fixes: 3f6d5e6a468d02 ("mm: introduce memalloc_flags_{save,restore}")
> Signed-off-by: Bagas Sanjaya <bagasdotme@gmail.com>
> ---
>   include/linux/sched/mm.h | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/include/linux/sched/mm.h b/include/linux/sched/mm.h
> index 0e1d73955fa511..95d0040df58413 100644
> --- a/include/linux/sched/mm.h
> +++ b/include/linux/sched/mm.h
> @@ -325,6 +325,7 @@ static inline void might_alloc(gfp_t gfp_mask)
>   
>   /**
>    * memalloc_flags_save - Add a PF_* flag to current->flags, save old value
> + * @flags: Flags to add.
>    *
>    * This allows PF_* flags to be conveniently added, irrespective of current
>    * value, and then the old version restored with memalloc_flags_restore().

Acked-by: David Hildenbrand (Red Hat) <david@kernel.org>

-- 
Cheers

David
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
