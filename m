Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2784B6F8D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 16:15:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 233833EE87
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 15:15:39 +0000 (UTC)
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
	by lists.linaro.org (Postfix) with ESMTPS id D81C63E8AA
	for <linaro-mm-sig@lists.linaro.org>; Mon,  7 Feb 2022 01:25:47 +0000 (UTC)
Received: from kwepemi500020.china.huawei.com (unknown [172.30.72.57])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4JsT2j5gTZzcck1;
	Mon,  7 Feb 2022 09:24:45 +0800 (CST)
Received: from kwepemm600017.china.huawei.com (7.193.23.234) by
 kwepemi500020.china.huawei.com (7.221.188.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 7 Feb 2022 09:25:44 +0800
Received: from [10.174.179.19] (10.174.179.19) by
 kwepemm600017.china.huawei.com (7.193.23.234) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 7 Feb 2022 09:25:43 +0800
Message-ID: <1d0b0a51-8376-db19-2634-036e66692d02@huawei.com>
Date: Mon, 7 Feb 2022 09:25:42 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: Marco Elver <elver@google.com>
References: <20220128015752.931256-1-liupeng256@huawei.com>
 <CANpmjNP+J-Ztz_sov0LPXS8nGCf-2oJFs0OJp1LQMBeaL00CBQ@mail.gmail.com>
From: "liupeng (DM)" <liupeng256@huawei.com>
In-Reply-To: <CANpmjNP+J-Ztz_sov0LPXS8nGCf-2oJFs0OJp1LQMBeaL00CBQ@mail.gmail.com>
X-Originating-IP: [10.174.179.19]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 kwepemm600017.china.huawei.com (7.193.23.234)
X-CFilter-Loop: Reflected
X-MailFrom: liupeng256@huawei.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: S6BKCJMCF2ZWNKINDOU3OSJD2ERBWPSI
X-Message-ID-Hash: S6BKCJMCF2ZWNKINDOU3OSJD2ERBWPSI
X-Mailman-Approved-At: Tue, 15 Feb 2022 15:15:34 +0000
CC: glider@google.com, dvyukov@google.com, corbet@lwn.net, christian.koenig@amd.com, akpm@linux-foundation.org, kasan-dev@googlegroups.com, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] kfence: Make test case compatible with run time set sample interval
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S6BKCJMCF2ZWNKINDOU3OSJD2ERBWPSI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============5338875001600884820=="

--===============5338875001600884820==
Content-Type: multipart/alternative;
	boundary="------------WBwpaL1IxONE0il5bX100oVb"
Content-Language: en-US

--------------WBwpaL1IxONE0il5bX100oVb
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit


On 2022/1/28 17:49, Marco Elver wrote:
> On Fri, 28 Jan 2022 at 02:41, Peng Liu<liupeng256@huawei.com>  wrote:
>> The parameter kfence_sample_interval can be set via boot parameter
>> and late shell command, which is convenient for automatical tests
> s/automatical/automated/
>
>> and KFENCE parameter optimation. However, KFENCE test case just use
> s/optimation/optimization/
>
>> compile time CONFIG_KFENCE_SAMPLE_INTERVAL, this will make KFENCE
>> test case not run as user desired. This patch will make KFENCE test
>> case compatible with run-time-set sample interval.
> I'm not too particular about it, but "This patch" is usually bad style:
> https://www.kernel.org/doc/html/latest/process/submitting-patches.html#describe-your-changes

I'm sorry for the "bad style", and I will carefully revise later.

>> v1->v2:
>> - Use EXPORT_SYMBOL_GPL replace EXPORT_SYMBOL
> Changelog is usually placed after '---', because it's mostly redundant
> once committed. Often maintainers include a "Link" to the original
> patch which then has history and discussion.
>
>> Signed-off-by: Peng Liu<liupeng256@huawei.com>
> Reviewed-by: Marco Elver<elver@google.com>
>
>
>> ---
>>   include/linux/kfence.h  | 2 ++
>>   mm/kfence/core.c        | 3 ++-
>>   mm/kfence/kfence_test.c | 8 ++++----
>>   3 files changed, 8 insertions(+), 5 deletions(-)
>>
>> diff --git a/include/linux/kfence.h b/include/linux/kfence.h
>> index 4b5e3679a72c..f49e64222628 100644
>> --- a/include/linux/kfence.h
>> +++ b/include/linux/kfence.h
>> @@ -17,6 +17,8 @@
>>   #include <linux/atomic.h>
>>   #include <linux/static_key.h>
>>
>> +extern unsigned long kfence_sample_interval;
>> +
>>   /*
>>    * We allocate an even number of pages, as it simplifies calculations to map
>>    * address to metadata indices; effectively, the very first page serves as an
>> diff --git a/mm/kfence/core.c b/mm/kfence/core.c
>> index 5ad40e3add45..13128fa13062 100644
>> --- a/mm/kfence/core.c
>> +++ b/mm/kfence/core.c
>> @@ -47,7 +47,8 @@
>>
>>   static bool kfence_enabled __read_mostly;
>>
>> -static unsigned long kfence_sample_interval __read_mostly = CONFIG_KFENCE_SAMPLE_INTERVAL;
>> +unsigned long kfence_sample_interval __read_mostly = CONFIG_KFENCE_SAMPLE_INTERVAL;
>> +EXPORT_SYMBOL_GPL(kfence_sample_interval); /* Export for test modules. */
>>
>>   #ifdef MODULE_PARAM_PREFIX
>>   #undef MODULE_PARAM_PREFIX
>> diff --git a/mm/kfence/kfence_test.c b/mm/kfence/kfence_test.c
>> index a22b1af85577..50dbb815a2a8 100644
>> --- a/mm/kfence/kfence_test.c
>> +++ b/mm/kfence/kfence_test.c
>> @@ -268,13 +268,13 @@ static void *test_alloc(struct kunit *test, size_t size, gfp_t gfp, enum allocat
>>           * 100x the sample interval should be more than enough to ensure we get
>>           * a KFENCE allocation eventually.
>>           */
>> -       timeout = jiffies + msecs_to_jiffies(100 * CONFIG_KFENCE_SAMPLE_INTERVAL);
>> +       timeout = jiffies + msecs_to_jiffies(100 * kfence_sample_interval);
>>          /*
>>           * Especially for non-preemption kernels, ensure the allocation-gate
>>           * timer can catch up: after @resched_after, every failed allocation
>>           * attempt yields, to ensure the allocation-gate timer is scheduled.
>>           */
>> -       resched_after = jiffies + msecs_to_jiffies(CONFIG_KFENCE_SAMPLE_INTERVAL);
>> +       resched_after = jiffies + msecs_to_jiffies(kfence_sample_interval);
>>          do {
>>                  if (test_cache)
>>                          alloc = kmem_cache_alloc(test_cache, gfp);
>> @@ -608,7 +608,7 @@ static void test_gfpzero(struct kunit *test)
>>          int i;
>>
>>          /* Skip if we think it'd take too long. */
>> -       KFENCE_TEST_REQUIRES(test, CONFIG_KFENCE_SAMPLE_INTERVAL <= 100);
>> +       KFENCE_TEST_REQUIRES(test, kfence_sample_interval <= 100);
>>
>>          setup_test_cache(test, size, 0, NULL);
>>          buf1 = test_alloc(test, size, GFP_KERNEL, ALLOCATE_ANY);
>> @@ -739,7 +739,7 @@ static void test_memcache_alloc_bulk(struct kunit *test)
>>           * 100x the sample interval should be more than enough to ensure we get
>>           * a KFENCE allocation eventually.
>>           */
>> -       timeout = jiffies + msecs_to_jiffies(100 * CONFIG_KFENCE_SAMPLE_INTERVAL);
>> +       timeout = jiffies + msecs_to_jiffies(100 * kfence_sample_interval);
>>          do {
>>                  void *objects[100];
>>                  int i, num = kmem_cache_alloc_bulk(test_cache, GFP_ATOMIC, ARRAY_SIZE(objects),
>> --
>> 2.18.0.huawei.25
>>
> .

I'm sorry for the latency due to the spring festival. Thank you for your advice,
and I will send a revised patch later.

Thanks,
-- Peng Liu

--------------WBwpaL1IxONE0il5bX100oVb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 2022/1/28 17:49, Marco Elver wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CANpmjNP+J-Ztz_sov0LPXS8nGCf-2oJFs0OJp1LQMBeaL00CBQ@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">On Fri, 28 Jan 2022 at 02:41, Peng Liu <a class="moz-txt-link-rfc2396E" href="mailto:liupeng256@huawei.com">&lt;liupeng256@huawei.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">The parameter kfence_sample_interval can be set via boot parameter
and late shell command, which is convenient for automatical tests
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
s/automatical/automated/

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">and KFENCE parameter optimation. However, KFENCE test case just use
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
s/optimation/optimization/

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">compile time CONFIG_KFENCE_SAMPLE_INTERVAL, this will make KFENCE
test case not run as user desired. This patch will make KFENCE test
case compatible with run-time-set sample interval.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
I'm not too particular about it, but "This patch" is usually bad style:
<a class="moz-txt-link-freetext" href="https://www.kernel.org/doc/html/latest/process/submitting-patches.html#describe-your-changes">https://www.kernel.org/doc/html/latest/process/submitting-patches.html#describe-your-changes</a>
</pre>
    </blockquote>
    <pre>I'm sorry for the "bad style", and I will carefully revise later.
</pre>
    <blockquote type="cite"
cite="mid:CANpmjNP+J-Ztz_sov0LPXS8nGCf-2oJFs0OJp1LQMBeaL00CBQ@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">v1-&gt;v2:
- Use EXPORT_SYMBOL_GPL replace EXPORT_SYMBOL
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Changelog is usually placed after '---', because it's mostly redundant
once committed. Often maintainers include a "Link" to the original
patch which then has history and discussion.

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">Signed-off-by: Peng Liu <a class="moz-txt-link-rfc2396E" href="mailto:liupeng256@huawei.com">&lt;liupeng256@huawei.com&gt;</a>
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Reviewed-by: Marco Elver <a class="moz-txt-link-rfc2396E" href="mailto:elver@google.com">&lt;elver@google.com&gt;</a>


</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">---
 include/linux/kfence.h  | 2 ++
 mm/kfence/core.c        | 3 ++-
 mm/kfence/kfence_test.c | 8 ++++----
 3 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/include/linux/kfence.h b/include/linux/kfence.h
index 4b5e3679a72c..f49e64222628 100644
--- a/include/linux/kfence.h
+++ b/include/linux/kfence.h
@@ -17,6 +17,8 @@
 #include &lt;linux/atomic.h&gt;
 #include &lt;linux/static_key.h&gt;

+extern unsigned long kfence_sample_interval;
+
 /*
  * We allocate an even number of pages, as it simplifies calculations to map
  * address to metadata indices; effectively, the very first page serves as an
diff --git a/mm/kfence/core.c b/mm/kfence/core.c
index 5ad40e3add45..13128fa13062 100644
--- a/mm/kfence/core.c
+++ b/mm/kfence/core.c
@@ -47,7 +47,8 @@

 static bool kfence_enabled __read_mostly;

-static unsigned long kfence_sample_interval __read_mostly = CONFIG_KFENCE_SAMPLE_INTERVAL;
+unsigned long kfence_sample_interval __read_mostly = CONFIG_KFENCE_SAMPLE_INTERVAL;
+EXPORT_SYMBOL_GPL(kfence_sample_interval); /* Export for test modules. */

 #ifdef MODULE_PARAM_PREFIX
 #undef MODULE_PARAM_PREFIX
diff --git a/mm/kfence/kfence_test.c b/mm/kfence/kfence_test.c
index a22b1af85577..50dbb815a2a8 100644
--- a/mm/kfence/kfence_test.c
+++ b/mm/kfence/kfence_test.c
@@ -268,13 +268,13 @@ static void *test_alloc(struct kunit *test, size_t size, gfp_t gfp, enum allocat
         * 100x the sample interval should be more than enough to ensure we get
         * a KFENCE allocation eventually.
         */
-       timeout = jiffies + msecs_to_jiffies(100 * CONFIG_KFENCE_SAMPLE_INTERVAL);
+       timeout = jiffies + msecs_to_jiffies(100 * kfence_sample_interval);
        /*
         * Especially for non-preemption kernels, ensure the allocation-gate
         * timer can catch up: after @resched_after, every failed allocation
         * attempt yields, to ensure the allocation-gate timer is scheduled.
         */
-       resched_after = jiffies + msecs_to_jiffies(CONFIG_KFENCE_SAMPLE_INTERVAL);
+       resched_after = jiffies + msecs_to_jiffies(kfence_sample_interval);
        do {
                if (test_cache)
                        alloc = kmem_cache_alloc(test_cache, gfp);
@@ -608,7 +608,7 @@ static void test_gfpzero(struct kunit *test)
        int i;

        /* Skip if we think it'd take too long. */
-       KFENCE_TEST_REQUIRES(test, CONFIG_KFENCE_SAMPLE_INTERVAL &lt;= 100);
+       KFENCE_TEST_REQUIRES(test, kfence_sample_interval &lt;= 100);

        setup_test_cache(test, size, 0, NULL);
        buf1 = test_alloc(test, size, GFP_KERNEL, ALLOCATE_ANY);
@@ -739,7 +739,7 @@ static void test_memcache_alloc_bulk(struct kunit *test)
         * 100x the sample interval should be more than enough to ensure we get
         * a KFENCE allocation eventually.
         */
-       timeout = jiffies + msecs_to_jiffies(100 * CONFIG_KFENCE_SAMPLE_INTERVAL);
+       timeout = jiffies + msecs_to_jiffies(100 * kfence_sample_interval);
        do {
                void *objects[100];
                int i, num = kmem_cache_alloc_bulk(test_cache, GFP_ATOMIC, ARRAY_SIZE(objects),
--
2.18.0.huawei.25

</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">.</pre>
    </blockquote>
    <pre>I'm sorry for the latency due to the spring festival. Thank you for your advice,
and I will send a revised patch later.

Thanks,
-- Peng Liu</pre>
  </body>
</html>
--------------WBwpaL1IxONE0il5bX100oVb--

--===============5338875001600884820==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============5338875001600884820==--
