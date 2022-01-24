Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B39444B6480
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 08:39:16 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EB4DD3EE97
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 07:39:15 +0000 (UTC)
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com [45.249.212.255])
	by lists.linaro.org (Postfix) with ESMTPS id 55879401BF
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Jan 2022 11:24:40 +0000 (UTC)
Received: from kwepemi100021.china.huawei.com (unknown [172.30.72.56])
	by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4Jj6wq6MYbz1FCsg;
	Mon, 24 Jan 2022 19:20:43 +0800 (CST)
Received: from kwepemm600017.china.huawei.com (7.193.23.234) by
 kwepemi100021.china.huawei.com (7.221.188.223) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 24 Jan 2022 19:24:35 +0800
Received: from [10.174.179.19] (10.174.179.19) by
 kwepemm600017.china.huawei.com (7.193.23.234) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 24 Jan 2022 19:24:34 +0800
Message-ID: <6eb16a68-9a56-7aea-3dd6-bd719a9ce700@huawei.com>
Date: Mon, 24 Jan 2022 19:24:33 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: Marco Elver <elver@google.com>
References: <20220124025205.329752-1-liupeng256@huawei.com>
 <20220124025205.329752-2-liupeng256@huawei.com>
 <Ye5hKItk3j7arjaI@elver.google.com>
From: "liupeng (DM)" <liupeng256@huawei.com>
In-Reply-To: <Ye5hKItk3j7arjaI@elver.google.com>
X-Originating-IP: [10.174.179.19]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 kwepemm600017.china.huawei.com (7.193.23.234)
X-CFilter-Loop: Reflected
X-MailFrom: liupeng256@huawei.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: Y4Y544BVDGEMOJBCRGN7UQQLDIUGDQTR
X-Message-ID-Hash: Y4Y544BVDGEMOJBCRGN7UQQLDIUGDQTR
X-Mailman-Approved-At: Tue, 15 Feb 2022 07:38:43 +0000
CC: glider@google.com, dvyukov@google.com, corbet@lwn.net, christian.koenig@amd.com, akpm@linux-foundation.org, kasan-dev@googlegroups.com, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 1/3] kfence: Add a module parameter to adjust kfence objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y4Y544BVDGEMOJBCRGN7UQQLDIUGDQTR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============8041876299374906224=="

--===============8041876299374906224==
Content-Type: multipart/alternative;
	boundary="------------g9HgE5kgaFA4bYG2xfKP1vsZ"
Content-Language: en-US

--------------g9HgE5kgaFA4bYG2xfKP1vsZ
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit


On 2022/1/24 16:19, Marco Elver wrote:
> On Mon, Jan 24, 2022 at 02:52AM +0000, Peng Liu wrote:
>> KFENCE is designed to be enabled in production kernels, but it can
>> be also useful in some debug situations. For machines with limited
>> memory and CPU resources, KASAN is really hard to run. Fortunately,
> If these are arm64 based machines, see if CONFIG_KASAN_SW_TAGS works for
> you. In future, we believe that CONFIG_KASAN_HW_TAGS will be suitable
> for a variety of scenarios, including debugging scenarios of resource
> constrained environments.

Thank you for your good suggestion, we will try it.

>> KFENCE can be a suitable candidate. For KFENCE running on a single
>> machine, the possibility of discovering existed bugs will increase
>> as the increasing of KFENCE objects, but this will cost more memory.
>> In order to balance the possibility of discovering existed bugs and
>> memory cost, KFENCE objects need to be adjusted according to memory
>> resources for a compiled kernel Image. Add a module parameter to
>> adjust KFENCE objects will make kfence to use in different machines
>> with the same kernel Image.
>>
>> In short, the following reasons motivate us to add this parameter.
>> 1) In some debug situations, this will make kfence flexible.
>> 2) For some production machines with different memory and CPU size,
>> this will reduce the kernel-Image-version burden.
> [...]
>> This patch (of 3):
> [ Note for future: No need to add "This patch (of X)" usually -- this is
>    added by maintainers if deemed appropriate, and usually includes the
>    cover letter. ]
>
>> The most important motivation of this patch series is to make
>> KFENCE easy-to-use in business situations.
>>
>> Signed-off-by: Peng Liu<liupeng256@huawei.com>
>> ---
>>   Documentation/dev-tools/kfence.rst |  14 ++--
>>   include/linux/kfence.h             |   3 +-
>>   mm/kfence/core.c                   | 108 ++++++++++++++++++++++++-----
>>   mm/kfence/kfence.h                 |   2 +-
>>   mm/kfence/kfence_test.c            |   2 +-
>>   5 files changed, 103 insertions(+), 26 deletions(-)
> [...]
>> diff --git a/include/linux/kfence.h b/include/linux/kfence.h
>> index 4b5e3679a72c..aec4f6b247b5 100644
>> --- a/include/linux/kfence.h
>> +++ b/include/linux/kfence.h
>> @@ -17,12 +17,13 @@
>>   #include <linux/atomic.h>
>>   #include <linux/static_key.h>
>>   
>> +extern unsigned long kfence_num_objects;
>>   /*
>>    * We allocate an even number of pages, as it simplifies calculations to map
>>    * address to metadata indices; effectively, the very first page serves as an
>>    * extended guard page, but otherwise has no special purpose.
>>    */
>> -#define KFENCE_POOL_SIZE ((CONFIG_KFENCE_NUM_OBJECTS + 1) * 2 * PAGE_SIZE)
>> +#define KFENCE_POOL_SIZE ((kfence_num_objects + 1) * 2 * PAGE_SIZE)
>>   extern char *__kfence_pool;
> I appreciate the effort, but you could have gotten a quicker answer if
> you had first sent us an email to ask why adjustable number of objects
> hasn't been done before. Because if it was trivial, we would have
> already done it.
>
> What you've done is turned KFENCE_POOL_SIZE into a function instead of a
> constant (it still being ALL_CAPS is now also misleading).
>
> This is important here:
>
> 	/**
> 	 * is_kfence_address() - check if an address belongs to KFENCE pool
> 	 * @addr: address to check
> 	 *
> 	 * Return: true or false depending on whether the address is within the KFENCE
> 	 * object range.
> 	 *
> 	 * KFENCE objects live in a separate page range and are not to be intermixed
> 	 * with regular heap objects (e.g. KFENCE objects must never be added to the
> 	 * allocator freelists). Failing to do so may and will result in heap
> 	 * corruptions, therefore is_kfence_address() must be used to check whether
> 	 * an object requires specific handling.
> 	 *
> 	 * Note: This function may be used in fast-paths, and is performance critical.
> 	 * Future changes should take this into account; for instance, we want to avoid
> 	 * introducing another load and therefore need to keep KFENCE_POOL_SIZE a
> 	 * constant (until immediate patching support is added to the kernel).
> 	 */
> 	static __always_inline bool is_kfence_address(const void *addr)
> 	{
> 		/*
> 		 * The __kfence_pool != NULL check is required to deal with the case
> 		 * where __kfence_pool == NULL && addr < KFENCE_POOL_SIZE. Keep it in
> 		 * the slow-path after the range-check!
> 		 */
> 		return unlikely((unsigned long)((char *)addr - __kfence_pool) < KFENCE_POOL_SIZE && __kfence_pool);
> 	}
>
> Unfortunately I think you missed the "Note".
>
> Which means that ultimately your patch adds another LOAD to the fast
> path, which is not an acceptable trade-off.
>
> This would mean your change would require benchmarking, but it'd also
> mean we and everyone else would have to re-benchmark _all_ systems where
> we've deployed KFENCE.
>
> I think the only reasonable way forward is if you add immediate patching
> support to the kernel as the "Note" suggests.

May you give us more details about "immediate patching"?

>
> In the meantime, while not a single kernel imagine, we've found that
> debug scenarios usually are best served with a custom debug kernel, as
> there are other debug features that are only Kconfig configurable. Thus,
> having a special debug kernel just configure KFENCE differently
> shouldn't be an issue in the majority of cases.
>
> Should this answer not be satisfying for you, the recently added feature
> skipping already covered allocations (configurable via
> kfence.skip_covered_thresh) alleviates some of the issue of a smaller
> pool with a very low sample interval (viz. high sample rate).
>
> The main thing to watch out for is KFENCE's actual sample rate vs
> intended sample rate (per kfence.sample_interval). If you monitor
> /sys/kernel/debug/kfence/stats, you can compute the actual sample rate.
> If the actual sample rate becomes significantly lower than the intended
> rate, only then does it make sense to increase the pool size. My
> suggestion for you is therefore to run some experiments, while adjusting
> kfence.sample_interval and kfence.skip_covered_thresh until you reach a
> sample rate that is close to intended.
>
> Thanks,
> -- Marco
> .

Thank you for your patient suggestions, it's actually helpful and inspired.
We have integrated your latest work "skipping already covered allocations",
and will do more experiments about KFENCE. Finally, we really hope you can
give us more introductions about "immediate patching".

Thanks,
-- Peng Liu
.

--------------g9HgE5kgaFA4bYG2xfKP1vsZ
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 2022/1/24 16:19, Marco Elver wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:Ye5hKItk3j7arjaI@elver.google.com">
      <pre class="moz-quote-pre" wrap="">On Mon, Jan 24, 2022 at 02:52AM +0000, Peng Liu wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">KFENCE is designed to be enabled in production kernels, but it can
be also useful in some debug situations. For machines with limited
memory and CPU resources, KASAN is really hard to run. Fortunately,
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
If these are arm64 based machines, see if CONFIG_KASAN_SW_TAGS works for
you. In future, we believe that CONFIG_KASAN_HW_TAGS will be suitable
for a variety of scenarios, including debugging scenarios of resource
constrained environments.
</pre>
    </blockquote>
    <pre class="moz-quote-pre" wrap="">Thank you for your good suggestion, we will try it.
</pre>
    <blockquote type="cite" cite="mid:Ye5hKItk3j7arjaI@elver.google.com">
      <pre class="moz-quote-pre" wrap="">
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">KFENCE can be a suitable candidate. For KFENCE running on a single
machine, the possibility of discovering existed bugs will increase
as the increasing of KFENCE objects, but this will cost more memory.
In order to balance the possibility of discovering existed bugs and
memory cost, KFENCE objects need to be adjusted according to memory
resources for a compiled kernel Image. Add a module parameter to
adjust KFENCE objects will make kfence to use in different machines
with the same kernel Image.

In short, the following reasons motivate us to add this parameter.
1) In some debug situations, this will make kfence flexible.
2) For some production machines with different memory and CPU size,
this will reduce the kernel-Image-version burden.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">[...]
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">This patch (of 3):
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
[ Note for future: No need to add "This patch (of X)" usually -- this is
  added by maintainers if deemed appropriate, and usually includes the
  cover letter. ]

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">The most important motivation of this patch series is to make
KFENCE easy-to-use in business situations.

Signed-off-by: Peng Liu <a class="moz-txt-link-rfc2396E" href="mailto:liupeng256@huawei.com">&lt;liupeng256@huawei.com&gt;</a>
---
 Documentation/dev-tools/kfence.rst |  14 ++--
 include/linux/kfence.h             |   3 +-
 mm/kfence/core.c                   | 108 ++++++++++++++++++++++++-----
 mm/kfence/kfence.h                 |   2 +-
 mm/kfence/kfence_test.c            |   2 +-
 5 files changed, 103 insertions(+), 26 deletions(-)
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">[...]  
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">diff --git a/include/linux/kfence.h b/include/linux/kfence.h
index 4b5e3679a72c..aec4f6b247b5 100644
--- a/include/linux/kfence.h
+++ b/include/linux/kfence.h
@@ -17,12 +17,13 @@
 #include &lt;linux/atomic.h&gt;
 #include &lt;linux/static_key.h&gt;
 
+extern unsigned long kfence_num_objects;
 /*
  * We allocate an even number of pages, as it simplifies calculations to map
  * address to metadata indices; effectively, the very first page serves as an
  * extended guard page, but otherwise has no special purpose.
  */
-#define KFENCE_POOL_SIZE ((CONFIG_KFENCE_NUM_OBJECTS + 1) * 2 * PAGE_SIZE)
+#define KFENCE_POOL_SIZE ((kfence_num_objects + 1) * 2 * PAGE_SIZE)
 extern char *__kfence_pool;
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
I appreciate the effort, but you could have gotten a quicker answer if
you had first sent us an email to ask why adjustable number of objects
hasn't been done before. Because if it was trivial, we would have
already done it.

What you've done is turned KFENCE_POOL_SIZE into a function instead of a
constant (it still being ALL_CAPS is now also misleading).

This is important here:

	/**
	 * is_kfence_address() - check if an address belongs to KFENCE pool
	 * @addr: address to check
	 *
	 * Return: true or false depending on whether the address is within the KFENCE
	 * object range.
	 *
	 * KFENCE objects live in a separate page range and are not to be intermixed
	 * with regular heap objects (e.g. KFENCE objects must never be added to the
	 * allocator freelists). Failing to do so may and will result in heap
	 * corruptions, therefore is_kfence_address() must be used to check whether
	 * an object requires specific handling.
	 *
	 * Note: This function may be used in fast-paths, and is performance critical.
	 * Future changes should take this into account; for instance, we want to avoid
	 * introducing another load and therefore need to keep KFENCE_POOL_SIZE a
	 * constant (until immediate patching support is added to the kernel).
	 */
	static __always_inline bool is_kfence_address(const void *addr)
	{
		/*
		 * The __kfence_pool != NULL check is required to deal with the case
		 * where __kfence_pool == NULL &amp;&amp; addr &lt; KFENCE_POOL_SIZE. Keep it in
		 * the slow-path after the range-check!
		 */
		return unlikely((unsigned long)((char *)addr - __kfence_pool) &lt; KFENCE_POOL_SIZE &amp;&amp; __kfence_pool);
	}

Unfortunately I think you missed the "Note".

Which means that ultimately your patch adds another LOAD to the fast
path, which is not an acceptable trade-off.

This would mean your change would require benchmarking, but it'd also
mean we and everyone else would have to re-benchmark _all_ systems where
we've deployed KFENCE.

I think the only reasonable way forward is if you add immediate patching
support to the kernel as the "Note" suggests.</pre>
    </blockquote>
    <pre>May you give us more details about "immediate patching"?
</pre>
    <blockquote type="cite" cite="mid:Ye5hKItk3j7arjaI@elver.google.com">
      <pre class="moz-quote-pre" wrap="">

In the meantime, while not a single kernel imagine, we've found that
debug scenarios usually are best served with a custom debug kernel, as
there are other debug features that are only Kconfig configurable. Thus,
having a special debug kernel just configure KFENCE differently
shouldn't be an issue in the majority of cases.

Should this answer not be satisfying for you, the recently added feature
skipping already covered allocations (configurable via
kfence.skip_covered_thresh) alleviates some of the issue of a smaller
pool with a very low sample interval (viz. high sample rate).

The main thing to watch out for is KFENCE's actual sample rate vs
intended sample rate (per kfence.sample_interval). If you monitor
/sys/kernel/debug/kfence/stats, you can compute the actual sample rate.
If the actual sample rate becomes significantly lower than the intended
rate, only then does it make sense to increase the pool size. My
suggestion for you is therefore to run some experiments, while adjusting
kfence.sample_interval and kfence.skip_covered_thresh until you reach a
sample rate that is close to intended.

Thanks,
-- Marco
.</pre>
    </blockquote>
    <pre class="moz-quote-pre" wrap="">Thank you for your patient suggestions, it's actually helpful and inspired. 
We have integrated your latest work "skipping already covered allocations",
and will do more experiments about KFENCE. Finally, we really hope you can
give us more introductions about "immediate patching".

Thanks,
-- Peng Liu
.
</pre>
  </body>
</html>
--------------g9HgE5kgaFA4bYG2xfKP1vsZ--

--===============8041876299374906224==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============8041876299374906224==--
