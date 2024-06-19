Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A44290E1E3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jun 2024 05:16:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 624EF44784
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jun 2024 03:16:47 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
	by lists.linaro.org (Postfix) with ESMTPS id D4F0840B1D
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jun 2024 03:16:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=MG6FMwXp;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 192.198.163.9 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1718767004; x=1750303004;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=evre/A62rleMBzK6LSljo40VULixCUjb6n/TUkE6G4s=;
  b=MG6FMwXp9M0FQNdEauxKw0nZvhQ6SpiMVBRLaikg5iRVOxFxoBiAFE9D
   2S/qkZ5ZOGVZvYGSju6L84WkjUK4Ly83DicqTnX0IUZ/J8O1S6C151hIg
   rGQ8sszmelfnX3DunRA1ffImeYBk+udypjcdHBhVWatfPSf0IwHZY4i6J
   8oyzfUEa4PuFGB/WYpJyT8k8POh6bQLUYA3CKuXtNRwUFSpmGNsP8+ZmD
   qgPysAtT2AsOKWnYGw4SrMjWiIK7ORdtFbiMWfoAoBtN/BlyYAbk9rqMt
   m3U81E7yY3FSg+07k8kcLmQnlD9Vx3oCg4PmZeTqC7NXlIRP9WLhT0YuR
   A==;
X-CSE-ConnectionGUID: SmN0enzUQLeXTKKWpX+xjw==
X-CSE-MsgGUID: KMwY9BEfSvqi2inWVLmJMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="26363852"
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000";
   d="scan'208";a="26363852"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jun 2024 20:16:43 -0700
X-CSE-ConnectionGUID: fhao++heQveyGaZRRaQIKA==
X-CSE-MsgGUID: jTxQrE6WQRe3T6I1xWYmlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000";
   d="scan'208";a="46893909"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
  by orviesa004.jf.intel.com with ESMTP; 18 Jun 2024 20:16:39 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sJloK-0006Dd-1P;
	Wed, 19 Jun 2024 03:16:36 +0000
Date: Wed, 19 Jun 2024 11:15:53 +0800
From: kernel test robot <lkp@intel.com>
To: Paul Cercueil <paul@crapouillou.net>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>, Vinod Koul <vkoul@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <202406191014.9JAzwRV6-lkp@intel.com>
References: <20240618100302.72886-4-paul@crapouillou.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240618100302.72886-4-paul@crapouillou.net>
X-Rspamd-Queue-Id: D4F0840B1D
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.50 / 15.00];
	REPLY(-4.00)[];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:192.198.163.0/26];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:4983, ipnet:192.198.162.0/23, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[intel.com:email,intel.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: V6IENRURF2TDFRGE65TF2UDNZQKCQFHY
X-Message-ID-Hash: V6IENRURF2TDFRGE65TF2UDNZQKCQFHY
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, Jonathan Corbet <corbet@lwn.net>, Nuno Sa <nuno.sa@analog.com>, linux-iio@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Paul Cercueil <paul@crapouillou.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v11 3/7] iio: core: Add new DMABUF interface infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V6IENRURF2TDFRGE65TF2UDNZQKCQFHY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Paul,

kernel test robot noticed the following build errors:

[auto build test ERROR on jic23-iio/togreg]
[also build test ERROR on vkoul-dmaengine/next linus/master v6.10-rc4 next-20240618]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Paul-Cercueil/dmaengine-Add-API-function-dmaengine_prep_peripheral_dma_vec/20240618-180602
base:   https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio.git togreg
patch link:    https://lore.kernel.org/r/20240618100302.72886-4-paul%40crapouillou.net
patch subject: [PATCH v11 3/7] iio: core: Add new DMABUF interface infrastructure
config: x86_64-randconfig-161-20240619 (https://download.01.org/0day-ci/archive/20240619/202406191014.9JAzwRV6-lkp@intel.com/config)
compiler: clang version 18.1.5 (https://github.com/llvm/llvm-project 617a15a9eac96088ae5e9134248d8236e34b91b1)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240619/202406191014.9JAzwRV6-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406191014.9JAzwRV6-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/iio/industrialio-buffer.c:1715:3: error: cannot jump from this goto statement to its label
    1715 |                 goto err_dmabuf_unmap_attachment;
         |                 ^
   drivers/iio/industrialio-buffer.c:1720:2: note: jump bypasses initialization of variable with __attribute__((cleanup))
    1720 |         guard(mutex)(&buffer->dmabufs_mutex);
         |         ^
   include/linux/cleanup.h:164:15: note: expanded from macro 'guard'
     164 |         CLASS(_name, __UNIQUE_ID(guard))
         |                      ^
   include/linux/compiler.h:189:29: note: expanded from macro '__UNIQUE_ID'
     189 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
         |                             ^
   include/linux/compiler_types.h:84:22: note: expanded from macro '__PASTE'
      84 | #define __PASTE(a,b) ___PASTE(a,b)
         |                      ^
   include/linux/compiler_types.h:83:23: note: expanded from macro '___PASTE'
      83 | #define ___PASTE(a,b) a##b
         |                       ^
   <scratch space>:126:1: note: expanded from here
     126 | __UNIQUE_ID_guard696
         | ^
   drivers/iio/industrialio-buffer.c:1704:3: error: cannot jump from this goto statement to its label
    1704 |                 goto err_resv_unlock;
         |                 ^
   drivers/iio/industrialio-buffer.c:1720:2: note: jump bypasses initialization of variable with __attribute__((cleanup))
    1720 |         guard(mutex)(&buffer->dmabufs_mutex);
         |         ^
   include/linux/cleanup.h:164:15: note: expanded from macro 'guard'
     164 |         CLASS(_name, __UNIQUE_ID(guard))
         |                      ^
   include/linux/compiler.h:189:29: note: expanded from macro '__UNIQUE_ID'
     189 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
         |                             ^
   include/linux/compiler_types.h:84:22: note: expanded from macro '__PASTE'
      84 | #define __PASTE(a,b) ___PASTE(a,b)
         |                      ^
   include/linux/compiler_types.h:83:23: note: expanded from macro '___PASTE'
      83 | #define ___PASTE(a,b) a##b
         |                       ^
   <scratch space>:126:1: note: expanded from here
     126 | __UNIQUE_ID_guard696
         | ^
   drivers/iio/industrialio-buffer.c:1695:3: error: cannot jump from this goto statement to its label
    1695 |                 goto err_dmabuf_detach;
         |                 ^
   drivers/iio/industrialio-buffer.c:1720:2: note: jump bypasses initialization of variable with __attribute__((cleanup))
    1720 |         guard(mutex)(&buffer->dmabufs_mutex);
         |         ^
   include/linux/cleanup.h:164:15: note: expanded from macro 'guard'
     164 |         CLASS(_name, __UNIQUE_ID(guard))
         |                      ^
   include/linux/compiler.h:189:29: note: expanded from macro '__UNIQUE_ID'
     189 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
         |                             ^
   include/linux/compiler_types.h:84:22: note: expanded from macro '__PASTE'
      84 | #define __PASTE(a,b) ___PASTE(a,b)
         |                      ^
   include/linux/compiler_types.h:83:23: note: expanded from macro '___PASTE'
      83 | #define ___PASTE(a,b) a##b
         |                       ^
   <scratch space>:126:1: note: expanded from here
     126 | __UNIQUE_ID_guard696
         | ^
   drivers/iio/industrialio-buffer.c:1690:3: error: cannot jump from this goto statement to its label
    1690 |                 goto err_dmabuf_put;
         |                 ^
   drivers/iio/industrialio-buffer.c:1720:2: note: jump bypasses initialization of variable with __attribute__((cleanup))
    1720 |         guard(mutex)(&buffer->dmabufs_mutex);
         |         ^
   include/linux/cleanup.h:164:15: note: expanded from macro 'guard'
     164 |         CLASS(_name, __UNIQUE_ID(guard))
         |                      ^
   include/linux/compiler.h:189:29: note: expanded from macro '__UNIQUE_ID'
     189 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
         |                             ^
   include/linux/compiler_types.h:84:22: note: expanded from macro '__PASTE'
      84 | #define __PASTE(a,b) ___PASTE(a,b)
         |                      ^
   include/linux/compiler_types.h:83:23: note: expanded from macro '___PASTE'
      83 | #define ___PASTE(a,b) a##b
         |                       ^
   <scratch space>:126:1: note: expanded from here
     126 | __UNIQUE_ID_guard696
         | ^
   drivers/iio/industrialio-buffer.c:1684:3: error: cannot jump from this goto statement to its label
    1684 |                 goto err_free_priv;
         |                 ^
   drivers/iio/industrialio-buffer.c:1720:2: note: jump bypasses initialization of variable with __attribute__((cleanup))
    1720 |         guard(mutex)(&buffer->dmabufs_mutex);
         |         ^
   include/linux/cleanup.h:164:15: note: expanded from macro 'guard'
     164 |         CLASS(_name, __UNIQUE_ID(guard))
         |                      ^
   include/linux/compiler.h:189:29: note: expanded from macro '__UNIQUE_ID'
     189 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
         |                             ^
   include/linux/compiler_types.h:84:22: note: expanded from macro '__PASTE'
      84 | #define __PASTE(a,b) ___PASTE(a,b)
         |                      ^
   include/linux/compiler_types.h:83:23: note: expanded from macro '___PASTE'
      83 | #define ___PASTE(a,b) a##b


vim +1715 drivers/iio/industrialio-buffer.c

  1655	
  1656	static int iio_buffer_attach_dmabuf(struct iio_dev_buffer_pair *ib,
  1657					    int __user *user_fd, bool nonblock)
  1658	{
  1659		struct iio_dev *indio_dev = ib->indio_dev;
  1660		struct iio_buffer *buffer = ib->buffer;
  1661		struct dma_buf_attachment *attach;
  1662		struct iio_dmabuf_priv *priv, *each;
  1663		struct dma_buf *dmabuf;
  1664		int err, fd;
  1665	
  1666		if (!buffer->access->attach_dmabuf
  1667		    || !buffer->access->detach_dmabuf
  1668		    || !buffer->access->enqueue_dmabuf)
  1669			return -EPERM;
  1670	
  1671		if (copy_from_user(&fd, user_fd, sizeof(fd)))
  1672			return -EFAULT;
  1673	
  1674		priv = kzalloc(sizeof(*priv), GFP_KERNEL);
  1675		if (!priv)
  1676			return -ENOMEM;
  1677	
  1678		spin_lock_init(&priv->lock);
  1679		priv->context = dma_fence_context_alloc(1);
  1680	
  1681		dmabuf = dma_buf_get(fd);
  1682		if (IS_ERR(dmabuf)) {
  1683			err = PTR_ERR(dmabuf);
  1684			goto err_free_priv;
  1685		}
  1686	
  1687		attach = dma_buf_attach(dmabuf, indio_dev->dev.parent);
  1688		if (IS_ERR(attach)) {
  1689			err = PTR_ERR(attach);
  1690			goto err_dmabuf_put;
  1691		}
  1692	
  1693		err = iio_dma_resv_lock(dmabuf, nonblock);
  1694		if (err)
  1695			goto err_dmabuf_detach;
  1696	
  1697		priv->dir = buffer->direction == IIO_BUFFER_DIRECTION_IN
  1698			? DMA_FROM_DEVICE : DMA_TO_DEVICE;
  1699	
  1700		priv->sgt = dma_buf_map_attachment(attach, priv->dir);
  1701		if (IS_ERR(priv->sgt)) {
  1702			err = PTR_ERR(priv->sgt);
  1703			dev_err(&indio_dev->dev, "Unable to map attachment: %d\n", err);
  1704			goto err_resv_unlock;
  1705		}
  1706	
  1707		kref_init(&priv->ref);
  1708		priv->buffer = buffer;
  1709		priv->attach = attach;
  1710		attach->importer_priv = priv;
  1711	
  1712		priv->block = buffer->access->attach_dmabuf(buffer, attach);
  1713		if (IS_ERR(priv->block)) {
  1714			err = PTR_ERR(priv->block);
> 1715			goto err_dmabuf_unmap_attachment;
  1716		}
  1717	
  1718		dma_resv_unlock(dmabuf->resv);
  1719	
  1720		guard(mutex)(&buffer->dmabufs_mutex);
  1721	
  1722		/*
  1723		 * Check whether we already have an attachment for this driver/DMABUF
  1724		 * combo. If we do, refuse to attach.
  1725		 */
  1726		list_for_each_entry(each, &buffer->dmabufs, entry) {
  1727			if (each->attach->dev == indio_dev->dev.parent
  1728			    && each->attach->dmabuf == dmabuf) {
  1729				/*
  1730				 * We unlocked the reservation object, so going through
  1731				 * the cleanup code would mean re-locking it first.
  1732				 * At this stage it is simpler to free the attachment
  1733				 * using iio_buffer_dma_put().
  1734				 */
  1735				iio_buffer_dmabuf_put(attach);
  1736				return -EBUSY;
  1737			}
  1738		}
  1739	
  1740		/* Otherwise, add the new attachment to our dmabufs list. */
  1741		list_add(&priv->entry, &buffer->dmabufs);
  1742	
  1743		return 0;
  1744	
  1745	err_dmabuf_unmap_attachment:
  1746		dma_buf_unmap_attachment(attach, priv->sgt, priv->dir);
  1747	err_resv_unlock:
  1748		dma_resv_unlock(dmabuf->resv);
  1749	err_dmabuf_detach:
  1750		dma_buf_detach(dmabuf, attach);
  1751	err_dmabuf_put:
  1752		dma_buf_put(dmabuf);
  1753	err_free_priv:
  1754		kfree(priv);
  1755	
  1756		return err;
  1757	}
  1758	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
