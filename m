Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YTW5I4XG9Wl/OwIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 02 May 2026 11:40:21 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C104B18B9
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 02 May 2026 11:40:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8DC0C40169
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  2 May 2026 09:40:19 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by lists.linaro.org (Postfix) with ESMTPS id 3E47B3F6FF
	for <linaro-mm-sig@lists.linaro.org>; Sat,  2 May 2026 09:40:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Rrf6PEdi;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of error27@gmail.com designates 209.85.128.52 as permitted sender) smtp.mailfrom=error27@gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-48984d29fe3so38378785e9.0
        for <linaro-mm-sig@lists.linaro.org>; Sat, 02 May 2026 02:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777714815; x=1778319615; darn=lists.linaro.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xWxxzhKBAmtcwBT63aGnVt/i27b3I+bhzf4HGA2Jwck=;
        b=Rrf6PEdi4+0czoUwKXSqREjWSmkg8In5wcFomHZ1Z+EWgzVcX0a4mod/YjcPrSFvSI
         lbWfB5K3MxxO7TpYqyxQIzgWIa4f2PvB9n4i+60Pl95TAXUNoJKjjcYTzlYShZWH16es
         Mk+H4AQxZlJP9LXxE8IDufHgSsf0gl8AzKz42tBDR4Qb2NmzMVr8MgGg2QF8mv0Y4VkB
         tPixa0Iyt6uGY5Qcqmz/BL6A49hyp8b3w3JR0XVXsEip9yGxUnmu15DR/Rn8hPVpyPng
         q1kX4qgTnwLoml/MHaNsW4n6MuzHqlE+osdlttjhXQoSkdixHhNchi/SlpoEZA3ln/CD
         7KpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777714815; x=1778319615;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xWxxzhKBAmtcwBT63aGnVt/i27b3I+bhzf4HGA2Jwck=;
        b=KKxq6cP4OEwj+pCds8dB//aAdz8P7u1uCrw649+nU4JoYi+e10hfokJhhna9HGxlsB
         yTF3natPOEF5VbtubCJBACXcES71wEySHwMHTa55nxzE2DwIGrXdIbbnuw0sCUOTx1QZ
         504+dJPkohlVoDTPtORssAj5m1C6txP9OvrqJaLMtini3sUmW+/BHxK9oGeDU6kUXOMc
         gLxdBD2LJMdCXk5Ic0jrfFB+i7Rd5YLnYPaChf78Jt6bjK2/z4Wu2c3Mi126bSgZ9m7d
         xTQ3hdCf6uaas7hsicrMSc7S0hW5nALO9IDIHZ+chuUU0ZVG6fw0DXSLYujOh7OV1utp
         LwpA==
X-Gm-Message-State: AOJu0YxmsPsDJBrzdrD540XK1zayUB/HqE3B8fv/O6bZEZmIgKBpCCLw
	rp6a3ipzeztl4OTRLnzCWn593i8X9jGakGMG2fFq1Wjne3RtM9LPoteN
X-Gm-Gg: AeBDietzwg6hllXM0cvhVzUQ3TYWZM9vz3jpNAFyBsgbBiUDdflHxJWOI2WoyFIyLeU
	kfmCidWvyks0WgSsackXPUrdG9m+xn8Xz/yDXwGVbScwKEmxwm7UsDXWHyP+yt++kHxWKX9wfih
	2eVbJQuQ+HgLkHcVR/fBDFfFa7HzdEe4hEbzKMT8W+K0t4cLz8XfSYyBGbnOiF/81/LG7isa1YP
	K/uZ4tsXuKoyEXNHGsgg7HKf5Yjj4114c9e/8jyrcBcOj+sNL6mSbG2nA+4WQlC4oWFvldkOM3P
	OLHeT+N3I+mZ0Y+A1+//dXgExLb0wtQ8eVWVDlL6adGIk9NbSNey8ol2EB3BdhJg+Rctl0k7ODn
	0fGG7walnNcu46r+703Rl5yRMJYhVviaafb2mP/iVvvJwB1duG9xpppWunQnPfce171y/yLl4t+
	7DYRPT6AuggUv3aiClb1RC0DLSbgZSq+3VhKqWqnab
X-Received: by 2002:a05:600d:16:b0:48a:563c:c8e2 with SMTP id 5b1f17b1804b1-48a9852d292mr27498815e9.3.1777714815081;
        Sat, 02 May 2026 02:40:15 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48a81b99127sm180583055e9.0.2026.05.02.02.40.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 May 2026 02:40:14 -0700 (PDT)
Date: Sat, 2 May 2026 12:40:10 +0300
From: Dan Carpenter <error27@gmail.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, linux-mm@kvack.org,
	Sumit Semwal <sumit.semwal@linaro.org>,
	dri-devel@lists.freedesktop.org
Message-ID: <afXGeq1AvqFY76MY@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Spamd-Bar: ---
Message-ID-Hash: A73PHENCNMXENYRELBGWYYYKSKRXQI4P
X-Message-ID-Hash: A73PHENCNMXENYRELBGWYYYKSKRXQI4P
X-MailFrom: error27@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [bug report] dma-buf: heaps: Rework heap allocation hooks to return struct dma_buf instead of fd
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/A73PHENCNMXENYRELBGWYYYKSKRXQI4P/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 03C104B18B9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	RCPT_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[error27@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]

I'm not sure exactly who to report this bug too.  Probably the mm
devs?

	drivers/dma-buf/heaps/system_heap.c:499 system_heap_allocate()
	warn: passing positive error code 's32min-(-1),1' to 'ERR_PTR'

drivers/dma-buf/heaps/system_heap.c
    459         if (cc_shared) {
    460                 for_each_sgtable_sg(table, sg, i) {
    461                         ret = system_heap_set_page_decrypted(sg_page(sg));
    462                         if (ret)
    463                                 goto free_pages;

It kind of looks like system_heap_set_page_decrypted() can return 1.

    464                 }
    465         }
    466 
    467         /* create the dmabuf */
    468         exp_info.exp_name = dma_heap_get_name(heap);
    469         exp_info.ops = &system_heap_buf_ops;
    470         exp_info.size = buffer->len;
    471         exp_info.flags = fd_flags;
    472         exp_info.priv = buffer;
    473         dmabuf = dma_buf_export(&exp_info);
    474         if (IS_ERR(dmabuf)) {
    475                 ret = PTR_ERR(dmabuf);
    476                 goto free_pages;
    477         }
    478         return dmabuf;
    479 
    480 free_pages:
    481         for_each_sgtable_sg(table, sg, i) {
    482                 struct page *p = sg_page(sg);
    483 
    484                 /*
    485                  * Intentionally leak pages that cannot be re-encrypted
    486                  * to prevent shared memory from being reused.
    487                  */
    488                 if (buffer->cc_shared &&
    489                     system_heap_set_page_encrypted(p))
    490                         continue;
    491                 __free_pages(p, compound_order(p));
    492         }
    493         sg_free_table(table);
    494 free_buffer:
    495         list_for_each_entry_safe(page, tmp_page, &pages, lru)
    496                 __free_pages(page, compound_order(page));
    497         kfree(buffer);
    498 
--> 499         return ERR_PTR(ret);
    500 }

The problem is that add_to_pagemap() returns PM_END_OF_BUFFER (1)
which is used by pagemap_read() and nowhere else.  The call tree
is:

system_heap_allocate()
system_heap_set_page_decrypted()
set_memory_decrypted()
realm_set_memory_decrypted()
__set_memory_enc_dec()
__change_memory_common()
update_range_prot()
walk_kernel_page_table_range_lockless()
walk_pgd_range()
pagemap_pte_hole()
add_to_pagemap()

This code seems sort of old and I guess no one has reported the bug
so maybe it's a false positive, but it feels like it's asking for
problems to return the PM_END_OF_BUFFER.  There aren't any comments
on any of those functions above explaining what return values are
expected.

This email is a free service from the Smatch-CI project [smatch.sf.net].

regards,
dan carpenter
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
