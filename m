Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EF76664C8E4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Dec 2022 13:22:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 02DD63E978
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Dec 2022 12:22:27 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by lists.linaro.org (Postfix) with ESMTPS id AD9273ECF8
	for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Nov 2022 09:44:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=Crx25Vgq;
	spf=pass (lists.linaro.org: domain of error27@gmail.com designates 209.85.128.50 as permitted sender) smtp.mailfrom=error27@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id t25-20020a1c7719000000b003cfa34ea516so512108wmi.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Nov 2022 01:44:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=p85oLb7h53+kyvoO1NrIJwD8roHmaGjI5sTbnSIZClE=;
        b=Crx25VgqVbe9vxuk33gbtDpMSacgtXdKMucfYTPiFnJRut300uvMziBsZRU0EteACd
         IwJwUg3LmfDbol5bjJoeq+qbD8CK6jny+IvsvSF/zM+BSoO8PGOydCcvyS+iqvj4mWqO
         haJQH5A81OtLIPC+b3EEIpdGSKWUhYiaH2tfv5A2bAB+pvSsF/9OMsHN173Z1ZbjtrOp
         xsCjRgDIq4NNJHrsjy4o3OvlA6uoPlEAuirNpQaK3bypGiKXY/8GoQ+D2Hx+3QdnmysJ
         lb++HMsNQR3ee2WNcU9vGTi18A2jtaPF3GWyCluNkmOQTfQ9GPELrfkIIZC9+POKDRL1
         ASLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p85oLb7h53+kyvoO1NrIJwD8roHmaGjI5sTbnSIZClE=;
        b=CiBLwseQtWr5lnCtzsxwefJS9nz6sirpl7VnmgdpiVwFHlGbcasK4Qh1CK38wvNJuO
         a6xQaJk1IR3St/RcDbomdpyXXyN16a4DGB73v84j/lgWW9pbZq8bxjFxcUyLMwueh5MF
         C7/2CxYE072OIaf5iX6lgFGwJ23HQxMwVdcmnoukzD0vEpKKxj3DJFJP68MOiixeB7+t
         FnExkcKwWthW9RrVpJvvEX5j4/M7MexEa00UUQBj0rAyeJ1tQy+37P70odjDYc5o2/8+
         lKkZBL/cpoRCQvvjxqclIsiXqc5D3hEOVEF83/dkYOLUx9JvfrypLQkYVMT72vIKEMUD
         uZoA==
X-Gm-Message-State: ANoB5pmNZHG38CQjVqT/fU8iYpy9RolHJN9fUVmlheFCjhVKxz78rp2S
	VmUTfn8p5PgS4QGxymz3Fco=
X-Google-Smtp-Source: AA0mqf6ZKx/hS2Nrc536AQHZa866K7k9pf/L0v1N047l6lcizzVD1P40MdVI9/oJNy4JyvhA7noBIQ==
X-Received: by 2002:a7b:c053:0:b0:3cf:e0ef:4508 with SMTP id u19-20020a7bc053000000b003cfe0ef4508mr28165853wmc.84.1669715075585;
        Tue, 29 Nov 2022 01:44:35 -0800 (PST)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id x9-20020a5d6b49000000b002366e3f1497sm13259817wrw.6.2022.11.29.01.44.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Nov 2022 01:44:35 -0800 (PST)
Date: Tue, 29 Nov 2022 12:44:32 +0300
From: Dan Carpenter <error27@gmail.com>
To: abel.vesa@linaro.org
Message-ID: <Y4XUgC5ugzPzHO9q@kili>
MIME-Version: 1.0
Content-Disposition: inline
X-Rspamd-Queue-Id: AD9273ECF8
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.128.50:from];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.50:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-wm1-f50.google.com:rdns,mail-wm1-f50.google.com:helo];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: error27@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4ZTMUNWEKCCDJN7VICK5KKZ3UBBJUPPY
X-Message-ID-Hash: 4ZTMUNWEKCCDJN7VICK5KKZ3UBBJUPPY
X-Mailman-Approved-At: Wed, 14 Dec 2022 12:18:54 +0000
CC: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [bug report] misc: fastrpc: Rework fastrpc_req_munmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4ZTMUNWEKCCDJN7VICK5KKZ3UBBJUPPY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello Abel Vesa,

The patch 72fa6f7820c4: "misc: fastrpc: Rework fastrpc_req_munmap"
from Nov 25, 2022, leads to the following Smatch static checker
warning:

	drivers/misc/fastrpc.c:1927 fastrpc_req_mmap()
	error: double free of 'buf'

drivers/misc/fastrpc.c
    1831 static int fastrpc_req_mmap(struct fastrpc_user *fl, char __user *argp)
    1832 {
    1833         struct fastrpc_invoke_args args[3] = { [0 ... 2] = { 0 } };
    1834         struct fastrpc_buf *buf = NULL;
    1835         struct fastrpc_mmap_req_msg req_msg;
    1836         struct fastrpc_mmap_rsp_msg rsp_msg;
    1837         struct fastrpc_phy_page pages;
    1838         struct fastrpc_req_mmap req;
    1839         struct device *dev = fl->sctx->dev;
    1840         int err;
    1841         u32 sc;
    1842 
    1843         if (copy_from_user(&req, argp, sizeof(req)))
    1844                 return -EFAULT;
    1845 
    1846         if (req.flags != ADSP_MMAP_ADD_PAGES && req.flags != ADSP_MMAP_REMOTE_HEAP_ADDR) {
    1847                 dev_err(dev, "flag not supported 0x%x\n", req.flags);
    1848 
    1849                 return -EINVAL;
    1850         }
    1851 
    1852         if (req.vaddrin) {
    1853                 dev_err(dev, "adding user allocated pages is not supported\n");
    1854                 return -EINVAL;
    1855         }
    1856 
    1857         err = fastrpc_buf_alloc(fl, fl->sctx->dev, req.size, &buf);
    1858         if (err) {
    1859                 dev_err(dev, "failed to allocate buffer\n");
    1860                 return err;
    1861         }
    1862 
    1863         req_msg.pgid = fl->tgid;
    1864         req_msg.flags = req.flags;
    1865         req_msg.vaddr = req.vaddrin;
    1866         req_msg.num = sizeof(pages);
    1867 
    1868         args[0].ptr = (u64) (uintptr_t) &req_msg;
    1869         args[0].length = sizeof(req_msg);
    1870 
    1871         pages.addr = buf->phys;
    1872         pages.size = buf->size;
    1873 
    1874         args[1].ptr = (u64) (uintptr_t) &pages;
    1875         args[1].length = sizeof(pages);
    1876 
    1877         args[2].ptr = (u64) (uintptr_t) &rsp_msg;
    1878         args[2].length = sizeof(rsp_msg);
    1879 
    1880         sc = FASTRPC_SCALARS(FASTRPC_RMID_INIT_MMAP, 2, 1);
    1881         err = fastrpc_internal_invoke(fl, true, FASTRPC_INIT_HANDLE, sc,
    1882                                       &args[0]);
    1883         if (err) {
    1884                 dev_err(dev, "mmap error (len 0x%08llx)\n", buf->size);
    1885                 goto err_invoke;
    1886         }
    1887 
    1888         /* update the buffer to be able to deallocate the memory on the DSP */
    1889         buf->raddr = (uintptr_t) rsp_msg.vaddr;
    1890 
    1891         /* let the client know the address to use */
    1892         req.vaddrout = rsp_msg.vaddr;
    1893 
    1894         /* Add memory to static PD pool, protection thru hypervisor */
    1895         if (req.flags != ADSP_MMAP_REMOTE_HEAP_ADDR && fl->cctx->vmcount) {
    1896                 struct qcom_scm_vmperm perm;
    1897 
    1898                 perm.vmid = QCOM_SCM_VMID_HLOS;
    1899                 perm.perm = QCOM_SCM_PERM_RWX;
    1900                 err = qcom_scm_assign_mem(buf->phys, buf->size,
    1901                         &(fl->cctx->vmperms[0].vmid), &perm, 1);
    1902                 if (err) {
    1903                         dev_err(fl->sctx->dev, "Failed to assign memory phys 0x%llx size 0x%llx err %d",
    1904                                         buf->phys, buf->size, err);
    1905                         goto err_assign;
    1906                 }
    1907         }
    1908 
    1909         spin_lock(&fl->lock);
    1910         list_add_tail(&buf->node, &fl->mmaps);
    1911         spin_unlock(&fl->lock);
    1912 
    1913         if (copy_to_user((void __user *)argp, &req, sizeof(req))) {
    1914                 err = -EFAULT;
    1915                 goto err_assign;
    1916         }
    1917 
    1918         dev_dbg(dev, "mmap\t\tpt 0x%09lx OK [len 0x%08llx]\n",
    1919                 buf->raddr, buf->size);
    1920 
    1921         return 0;
    1922 
    1923 err_assign:
    1924         fastrpc_req_munmap_impl(fl, buf);
                                             ^^^
"buf" freed here.

    1925 err_invoke:
    1926         fastrpc_buf_free(buf);
                                  ^^^
freed again here.

--> 1927 
    1928         return err;
    1929 }

regards,
dan carpenter
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
