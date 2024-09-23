Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C75E97E9E3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Sep 2024 12:24:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 735EC44336
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Sep 2024 10:24:37 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id A0C8744210
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Sep 2024 10:24:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=pass (policy=none) header.from=arm.com;
	spf=pass (lists.linaro.org: domain of steven.price@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=steven.price@arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8EBCDFEC;
	Mon, 23 Sep 2024 03:24:50 -0700 (PDT)
Received: from [10.57.79.18] (unknown [10.57.79.18])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 10BB23F71A;
	Mon, 23 Sep 2024 03:24:18 -0700 (PDT)
Message-ID: <f639bacf-eba5-48d3-8385-7d185a030130@arm.com>
Date: Mon, 23 Sep 2024 11:24:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Boris Brezillon <boris.brezillon@collabora.com>
References: <20240920234436.207563-1-adrian.larumbe@collabora.com>
 <20240920234436.207563-2-adrian.larumbe@collabora.com>
 <07c8c715-4016-4963-8544-2e9cc1a8208b@arm.com>
 <20240923121850.38181059@collabora.com>
From: Steven Price <steven.price@arm.com>
Content-Language: en-GB
In-Reply-To: <20240923121850.38181059@collabora.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A0C8744210
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.69 / 15.00];
	BAYES_HAM(-1.99)[95.02%];
	DMARC_POLICY_ALLOW(-0.50)[arm.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:217.140.96.0/20];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ASN(0.00)[asn:28939, ipnet:217.140.110.0/24, country:GB];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[collabora.com,arm.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_DKIM_NA(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: 5RWVSK5WYOZDISOO76LIIF72W75JC4DQ
X-Message-ID-Hash: 5RWVSK5WYOZDISOO76LIIF72W75JC4DQ
X-MailFrom: steven.price@arm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?Q?Adri=C3=A1n_Larumbe?= <adrian.larumbe@collabora.com>, Liviu Dudau <liviu.dudau@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, kernel@collabora.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 1/5] drm/panthor: introduce job cycle and timestamp accounting
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5RWVSK5WYOZDISOO76LIIF72W75JC4DQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 23/09/2024 11:18, Boris Brezillon wrote:
> On Mon, 23 Sep 2024 10:07:14 +0100
> Steven Price <steven.price@arm.com> wrote:
> 
>>> +static struct dma_fence *
>>> +queue_run_job(struct drm_sched_job *sched_job)
>>> +{
>>> +	struct panthor_job *job = container_of(sched_job, struct panthor_job, base);
>>> +	struct panthor_group *group = job->group;
>>> +	struct panthor_queue *queue = group->queues[job->queue_idx];
>>> +	struct panthor_device *ptdev = group->ptdev;
>>> +	struct panthor_scheduler *sched = ptdev->scheduler;
>>> +	struct panthor_job_ringbuf_instrs instrs;  
>>
>> instrs isn't initialised...
>>
>>> +	struct panthor_job_cs_params cs_params;
>>> +	struct dma_fence *done_fence;
>>> +	int ret;
>>>  
>>>  	/* Stream size is zero, nothing to do except making sure all previously
>>>  	 * submitted jobs are done before we signal the
>>> @@ -2900,17 +3062,23 @@ queue_run_job(struct drm_sched_job *sched_job)
>>>  		       queue->fence_ctx.id,
>>>  		       atomic64_inc_return(&queue->fence_ctx.seqno));
>>>  
>>> -	memcpy(queue->ringbuf->kmap + ringbuf_insert,
>>> -	       call_instrs, sizeof(call_instrs));
>>> +	job->profiling.slot = queue->profiling.seqno++;
>>> +	if (queue->profiling.seqno == queue->profiling.slot_count)
>>> +		queue->profiling.seqno = 0;
>>> +
>>> +	job->ringbuf.start = queue->iface.input->insert;
>>> +
>>> +	get_job_cs_params(job, &cs_params);
>>> +	prepare_job_instrs(&cs_params, &instrs);  
>>
>> ...but it's passed into prepare_job_instrs() which depends on
>> instrs.count (same bug as was in calc_job_credits()) - sorry I didn't
>> spot it last review.
> 
> Hm, can't we initialize instr::count to zero in prepare_job_instrs()
> instead?

Indeed that would probably be better! I hadn't noticed there were two
places in the previous review.

Steve
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
